class Api::ProductsController < ApplicationController
  def view_all
    @products = Product.all
    render "api/products/view_all.json.jb"
  end
  
  def view_one
    product_id = params[:id]
    @product = Product.find(product_id)
    render "api/products/view_one.json.jb"
  end
end
