class ProductsController < ApplicationController

  def index
    product = Product.all

    # condition sorts by name when search param is passed
    if params[:search]
      product = Product.where("name iLike ?", "%#{params[:search]}%")
      product = product.order(:name)
    end

    # condition provides price and name sorting options
    if (params[:sort] == "price") && (params[:sort_order] == "desc")
      product = Product.order(price: :desc)
    elsif params[:sort] == "price"
      product = Product.order(:price)
    elsif (params[:sort] == "name") && (params[:sort_order] == "desc")
      product = Product.order(name: :desc)
    elsif params[:sort] == "name"
      product = Product.order(:name)
    end

    # if user selects discounted, provides discounted product
    if params[:discount]
      product = Product.where("inventory < 5")
      product = product.order(:name)
    end

    # orders by :id if no parameters are passed
    render json: product.order(:id)
  end
    
  def create # creates new product via multipart body option in insomnia
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id]
    )
    if product.save # if product saves
      if params[:url] # also if there are params set for :url
        image = Image.create( #create a new image instance
          url: params[:url], 
          product_id: product.id # assigns current product :id
        )
        render json: product 
      else
        render json: {errors: image.errors.full_messages}
      end
    else 
      render json: {errors: product.errors.full_messages}
    end
  end

  def show 
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.inventory = params[:inventory] || product.inventory
    prouct.supplier_id = params[:supplier_id] || product.supplier_id

    if product.save # happy path
      render json: product 
    else # sad path
      render json: {errors: product.errors.full_messages}
    end

    if params[:url]
      image = Image.update(
        url: params[:url] || product.image,
        product_id: product.id
      )
      render json: image
    end

  end

  def destroy
    product = Product.find(params[:id])
    product.delete  
    render json: {message: "Product is now discontinued at this location"}
  end
end
