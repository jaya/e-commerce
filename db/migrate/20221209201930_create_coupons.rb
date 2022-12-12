class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.decimal :discount
      t.date :expiration

      t.timestamps
    end
  end
end
