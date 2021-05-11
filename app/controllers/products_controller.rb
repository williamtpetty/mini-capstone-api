class ProductsController < ApplicationController

  def index
    render json: Product.all # uses serializer
  end
    
  def create # creates new product via the multipart body option in insomnia, terminal program in terminal_create.rb
    new_product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    new_product.save
    render json: new_product # uses serializer
  end

  def show 
    single_tomato = Product.find_by(id: params[:id])
    render json: single_tomato # uses serializer
  end

  def update
    single_tomato = Product.find(params[:id]) #finds the product
    single_tomato.name = params[:name] || single_tomato.name
    single_tomato.price = params[:price] || single_tomato.price
    single_tomato.image_url = params[:image_url] || single_tomato.image_url
    single_tomato.description = params[:description] || single_tomato.description
    # each of these above will default to the currently held value of each parameter if nothing is passed as a new parameter
    single_tomato.save 
    render json: single_tomato # uses serializer
  end

  def destroy
    single_tomato = Product.find(params[:id])
    single_tomato.destroy
    render json: {message: "Product now permanently out of stock"}
  end
end
