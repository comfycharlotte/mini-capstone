class Api::OrdersController < ApplicationController
  def create
    product = Product.find_by(name: params[:product])
    order = Order.new(
      user_id: current_user.id,
      product_id: product.id
      quantity: params[:quantity]
    )
    if order.create 
      render json: { message: "Order created successfully"}
    else
      render json: { errors: order.errors.full_messages }
    end
  end
end
