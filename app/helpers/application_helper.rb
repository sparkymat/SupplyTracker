module ApplicationHelper
  def load_data
    {
      item_categories: ItemCategory.all.map{|c| {
        id:   c.id,
        name: c.name,
        code: c.code,
      }},
      item_types: ItemType.all.map{|t| {
        id:               t.id,
        name:             t.name,
        code:             t.code,
        item_category_id: t.item_category_id,
      }},
      districts: District.all.map{|district| {
          id: district.id,
          name: district.name,
          code: district.code,
          local_name: district.local_name
      }},
      areas: Area.all.map{|area| {
          id: area.id,
          name: area.name,
          district_id: area.district_id,
          locality: area.locality
      }}
    }
  end

  def load_code
    ISO3166::Country.all.map{|c| {_name: c.name, _english_name: c.translations["en"], _name_code: c.alpha2.downcase, _phone_code: c.country_code} }
  end
end
