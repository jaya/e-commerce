class CreateCreditCardPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_card_payments do |t|
      t.integer :payment_gateway_id
      t.string :masked_number

      t.timestamps
    end
  end
end
