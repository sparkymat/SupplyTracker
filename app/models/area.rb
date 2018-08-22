class Area < ApplicationRecord
  include HasCode

  belongs_to :area, optional: true
  belongs_to :district
end
