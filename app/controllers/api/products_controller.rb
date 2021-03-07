class Api::ProductsController < ApplicationController
  def index
    if params[:sort]
      @products = Product.all.order({price: :desc})
    else
      @products = Product.all
    end
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
      @message = @product.errors.full_messages
    end

    render "api/products/create.json.jb"
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @products.image_url
    @product.description = params[:description] || @product.description
    @product.save

    render "api/products/update.json.jb"
  end

  def delete
    @product = Product.find(params[:id])
    @product.destroy

    render "api/products/delete.json.jb"
  end
end
