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

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )

    if @product.save
      @message = "Success!"
    else
      @message = "An error has been encountered while attempting to save the product."
    end
    render "api/products/create.json.jb"
  end
end
