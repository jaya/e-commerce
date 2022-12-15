class Order < ApplicationRecord
    has_many :items
    belongs_to :coupon, optional: true
    belongs_to :credit_card_payment
    belongs_to :shipping_address
end
