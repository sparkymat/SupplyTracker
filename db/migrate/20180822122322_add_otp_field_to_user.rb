class AddOtpFieldToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :otp, :string
  end
end
