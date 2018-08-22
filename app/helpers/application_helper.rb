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
    }
  end
end
