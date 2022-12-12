class CreateShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_addresses do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :state
      t.string :zipCode

      t.timestamps
    end
  end
end
