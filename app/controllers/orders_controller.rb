class OrdersController < ApplicationController

  # This symbol is a method that comes from the Application controller
  before_action :authenticate_user

  def index
    order = current_user.orders
    render json: order
  end
  
  def create
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    if order.save
      # carted_products.update_all(status: "purchased", order_id: order.id)

      carted_products.each do |carted_product|
        carted_product.update(status: "purchased", order_id: order.id)
        # carted_product.product.inventory = carted_product.product.inventory - carted_product.quantity
      end
      render json: order
    else
      render json: {error: order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    order = current_user.orders.find(params[:id])
    render json: order
  end

  # def destroy
  #   order = current_user.orders.find(params[:id])
  #   order.delete
  #   render json: {message: "all orders deleted"}
  # end
end
