class AddShippingAddressToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :shipping_address, foreign_key: true
  end
end
