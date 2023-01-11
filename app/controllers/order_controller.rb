class OrderController < ApplicationController
  def add_to_cart
    order = nil
    if params[:order_id] == nil
      order = Order.new
      order.gross_amount = 0
      order.discount = 0
      order.final_amount = 0
      order.status = 1 # cart
      order.email = params[:email]
      order.save!
    else
      order = Order.find(params[:order_id])
    end

    if Product.exists?(params[:product_id])
      inventory_item = InventoryItem.find_by(product_id: params[:product_id])
      if inventory_item == nil || inventory_item.quantity < 1
        head :bad_request
      else
        product = Product.find(params[:product_id])
        item = Item.create(product_id: params[:product_id])
        order.items << item
        order.gross_amount += product.price
        order.final_amount = order.gross_amount - order.discount
        order.save!
        head :ok
      end
    else
      head :bad_request
    end

  end

  def apply_coupon
    order = Order.find_by(email: params[:email])
    coupon = Coupon.find_by(code: params[:code])
    if coupon.used
      head :bad_request
    else
      order.coupon = coupon
      order.discount = coupon.discount
      order.final_amount = order.gross_amount - order.discount
      head :ok
    end
  end

  def finish
    head :ok
  end
end
