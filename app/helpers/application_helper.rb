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
      districts: District.all.map{|d| {
        id:   d.id,
        name: d.name,
        code: d.code,
      }},
      areas: Area.all.map{|a| {
        id:          a.id,
        name:        a.name,
        district_id: a.district_id,
      }},
    }
  end

  def load_code
    ISO3166::Country.all.map{|c| {_name: c.name, _english_name: c.translations["en"], _name_code: c.alpha2.downcase, _phone_code: c.country_code} }
  end
end
