class Api::OrdersController < ApplicationController
  def create
    user = User.find_by(id: 1)
    product = Product.find_by(id: 2)
    order = Order.new(
      user_id: user.id,
      product_id: product.id,
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity],
      tax: product.tax * params[:quantity],
      total: product.total * params[:quantity]
    )
    if order.save
      render json: { message: "Order created successfully"}
    else
      render json: { errors: order.errors.full_messages }
    end
  end
end
