class AddToGoodsCommit < ActiveRecord::Migration[5.2]
  def change
    add_column :goods_commitments, :district_id, :integer
    add_column :goods_commitments, :area_id, :integer
  end
end
