class Inventory < ApplicationRecord
  include ActiveModel::AttributeAssignment
  attr_accessor :item_type_name

  belongs_to :goods_commitment, optional: true
  belongs_to :item_category, optional: true
  belongs_to :item_type, optional: true
  belongs_to :item_subtype, optional: true
  belongs_to :item_unit, optional: true
  belongs_to :area, optional: true

  before_create do
    if self.item_type_name.present?
      puts "sfsfsfsdfs"
      item_type = ItemType.create({name: self.item_type_name, item_category_id: self.item_category_id})
      self.item_type_id = item_type.id
    end
  end
end
