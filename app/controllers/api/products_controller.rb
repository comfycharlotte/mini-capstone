class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "api/products/index.json.jb"
  end
  
  def show
    product_id = params[:id]
    @product = Product.find(product_id)
    render "api/products/show.json.jb"
  end
end
