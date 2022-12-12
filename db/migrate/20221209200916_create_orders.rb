class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :email
      t.integer :status
      t.decimal :gross_amount
      t.decimal :discount
      t.decimal :final_amount

      t.timestamps
    end
  end
end
