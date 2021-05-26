class CartedProductsController < ApplicationController

  before_action :authenticate_user

  def index
    # You did the algo below when all you had to do was search for it - remember this and try not to fvkn do it again

    # carted_product = CartedProduct.all
    # product_carted_array = []
    # carted_product.each do |product|
    #   if product[:status] == "carted"
    #     product_carted_array << product
    #   end
    # end
    # render json: product_carted_array

    carted_product = current_user.carted_products.where(status: "carted")
    render json: carted_product

  end  

  def create

    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil
    )
    carted_product.save
    render json: carted_product
  end

  def update
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(
      user_id: current_user.id,
      product_id: params[:product_id] || carted_product.product_id,
      quantity: params[:quantity] || carted_product.quantity,
      status: params[:status] || carted_product.status,
      order_id: params[:order_id] || carted_product.order_id
    )
    carted_product.save
    render json: carted_product
  end

  def destroy
    carted_product = current_user.carted_products.where(status: carted).find(params[:id])
    carted_product.update(status: "removed")
    carted_product.save
    render json: {message: "This product has been removed from your cart"}
  end

end

