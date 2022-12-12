class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.integer :status
      t.string :tracking_number
      t.string :provider

      t.timestamps
    end
  end
end
