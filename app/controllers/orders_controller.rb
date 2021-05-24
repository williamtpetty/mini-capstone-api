class OrdersController < ApplicationController

  # This symbol is a method that comes from the Application controller
  before_action :authenticate_user

  def index
    order = current_user.orders
    render json: order
  end
  
  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    )

    # Creating a subtotal: you can call '.quantity' because it's an attribute of Order
    # Then, you can call .product because of 'belongs_to :product' in the Order model
    # Then, you can assign it to a new parameter 'order.subtotal' to call it
    order.subtotal = order.quantity * order.product.price
    order.tax = order.subtotal * 0.09
    order.total = order.tax + order.subtotal

    if order.save
      render json: order
    else
      render json: {error: order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    # The below two lines of code ensure (because of current_user.orders.find...) that
    # Only the current user can find their own orders
    order = current_user.orders.find(params[:id])
    render json: order
    # Work on comparing order id to current id - does that make sense?
  end
end
