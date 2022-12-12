class AddCreditCardPaymentToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :credit_card_payment, foreign_key: true
  end
end
