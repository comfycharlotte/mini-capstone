class Api::CartedProductsController < ApplicationController
  def index
    p current_user
    @carted_products = CartedProduct.where(user_id: current_user.id)
    render 'index.json.jb'
  end
end
