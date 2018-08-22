class Inventory < ApplicationRecord
  include ActiveModel::AttributeAssignment
  attr_accessor :item_type_name

  belongs_to :goods_commitment, optional: true
  belongs_to :item_category, optional: true
  belongs_to :item_type, optional: true
  belongs_to :item_subtype, optional: true
  belongs_to :item_unit, optional: true
  belongs_to :area, optional: true

  has_one :district, through: :area

  scope :has_item_category_id, ->(id) {where(item_category_id: id)}
  scope :has_item_type_id, ->(id) {where(item_type_id: id)}
  scope :has_district_id, ->(id) {where(area_id: Area.where(district_id: id).select(:id))}
  scope :has_area_id, ->(id) {where(area_id: id)}
  scope :has_name, -> (name){where("name ILIKE ?", "%#{name}%") }

  before_create do
    if self.item_type_name.present?
      item_type = ItemType.create({name: self.item_type_name, item_category_id: self.item_category_id})
      self.item_type_id = item_type.id
    end

    self.available_quantity = self.quantity

    if self.goods_commitment.present?
      self.contact_name = self.goods_commitment.name
      self.contact_number = self.goods_commitment.phone_number
      self.available_from = self.goods_commitment.available_from
    end
  end
end
