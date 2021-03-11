class Api::OrdersController < ApplicationController
  def index
    @orders = current_user.orders
    render 'index.json.jb'
  end

  def create
    p current_user
    user = User.find_by(id: 1)
    product = Product.find_by(id: 2)
    calculated_tax = product.tax * params[:quantity].to_i
    calculated_total = product.total * params[:quantity].to_i
    @order = Order.new(
      user_id: current_user.id,
      product_id: product.id,
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity].to_i,
      tax: calculated_tax,
      total: calculated_total
    )
    @order.save!
    render 'show.json.jb'
  end
end
