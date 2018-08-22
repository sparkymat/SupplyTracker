class InventoriesController < InheritedResources::Base

  has_scope :has_item_category_id, as: :item_category_id
  has_scope :has_item_type_id, as: :item_type_id
  has_scope :has_district_id, as: :district_id
  has_scope :has_area_id, as: :area_id
  has_scope :has_name, as: :search

  private

    def inventory_params
      params.require(:inventory).permit(:item_category_id, :item_type_id, :item_subtype_id, :item_unit_id, :quantity, :area_id, :latitude, :longitude, :address, :initial_quantity, :available_quantity, :source, :volunteer_id, :contact_number, :contact_name, :available_from)
    end
end

