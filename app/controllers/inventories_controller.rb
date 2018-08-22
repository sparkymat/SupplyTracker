class InventoriesController < InheritedResources::Base

  has_scope :has_item_category_id, as: :item_category_id
  has_scope :has_item_type_id, as: :item_type_id
  has_scope :has_district_id, as: :district_id
  has_scope :has_area_id, as: :area_id
  has_scope :has_name, as: :search

  def index
    @summary_items = collection.group_by(&:item_category).map { |item_category, inventory_collection|
      [
        item_category.name,
        inventory_collection.group_by(&:item_unit).map{ |item_unit, inner_inventory_collection|
            "#{inner_inventory_collection.sum(&:quantity)} #{item_unit&.name}"
        }
      ]
    }.to_h

    query_params = params.permit(:item_type_id, :item_category_id, :district_id, :area_id)

    if params[:item_category_id].present? && params[:item_type_id].present? && ItemType.find(params[:item_type_id]).item_category_id.to_s != params[:item_category_id].to_s
      query_params.merge!(item_category_id: ItemType.find(params[:item_type_id]).item_category_id)
      return redirect_to inventories_path(query_params)
    end

    if params[:district_id].present? && params[:area_id].present? && Area.find(params[:area_id]).district_id.to_s != params[:district_id].to_s
      query_params.merge!(district_id: Area.find(params[:area_id]).district_id)
      return redirect_to inventories_path(query_params)
    end

    super
  end

  private

    def inventory_params
      params.require(:inventory).permit(:item_category_id, :item_type_id, :item_subtype_id, :item_unit_id, :quantity, :area_id, :latitude, :longitude, :address, :initial_quantity, :available_quantity, :source, :volunteer_id, :contact_number, :contact_name, :available_from)
    end
end

