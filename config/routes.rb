Rails.application.routes.draw do
  post 'order/add_to_cart'
  post 'order/apply_coupon'
  post 'order/finish'
end
