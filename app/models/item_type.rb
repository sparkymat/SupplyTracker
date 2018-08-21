# frozen_string_literal: true

class ItemType < ApplicationRecord
  belongs_to :item_category
end
