class GoodsCommitment < ApplicationRecord
  include ActiveModel::AttributeAssignment
  attr_accessor :name, :phone_code, :phone_number, :email

  belongs_to :user, optional:true
  has_many :inventories, dependent: :destroy

  belongs_to :district, required: false
  belongs_to :area, required: false

  validates :inventories, :length => { :minimum => 1 }

  accepts_nested_attributes_for :inventories, allow_destroy: true

  before_create do
    mobile = self.phone_code + self.phone_number
    user = User.find_by_phone_number(mobile)
    otp = 100000 + SecureRandom.random_number(90000)
    if user.nil?
      if self.name.present? and self.phone_number.present?
        user = User.create({
             name: self.name,
             email: self.email,
             phone_number: mobile,
             password: otp
         })
        message = "Your password is #{otp}. Please user your email or phone to sign_in to track your donation. #savekerala"
        TwilioTextMessenger.new(message).call("+#{user.phone_number}")
        self.user_id = user.id
      else
        throw(:abort)
      end
    else
      self.user_id = user.id
    end
  end

  after_save do
    self.inventories.update_all({latitude: self.latitude, longitude: self.longitude, address: self.location})
  end
end
