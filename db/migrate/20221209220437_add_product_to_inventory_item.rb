class AddProductToInventoryItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventory_items, :product, foreign_key: true
  end
end
