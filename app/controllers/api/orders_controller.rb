class Api::OrdersController < ApplicationController
  before_action :authenticate_user, only: [:index, :show, :create]

  def index
    @orders = current_user.orders
    render 'index.json.jb'
  end

  def show
    @order = Order.find_by(id: params[:id], user_id: current_user.id)
    if @order
      render 'show.json.jb'
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    p current_user
    user = Product.find_by(id: params[:product_id])
    product = Product.find_by(

    calculated_tax = product.tax * params[:quantity].to_i
    calculated_total = product.total * params[:quantity].to_i

    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")

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
