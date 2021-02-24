class Api::ProductsController < ApplicationController
  def all
    @products = Product.all
    render "api/products/all.json.jb"
  end
end
