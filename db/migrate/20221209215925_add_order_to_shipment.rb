class AddOrderToShipment < ActiveRecord::Migration[5.2]
  def change
    add_reference :shipments, :order, foreign_key: true
  end
end
