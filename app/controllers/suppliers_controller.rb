class SuppliersController < ApplicationController

  def index
    if current_user
      suppliers = Supplier.all
      render json: {user: current_user, suppliers: suppliers}
    else
      authenticate_user
    end
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    if supplier.save
      render json: supplier
    else
      render json: {errors: supplier.errors.full_messages}
    end
  end

  def show
    if current_user
      
      supplier = Supplier.find(params[:id])
      render json: supplier
    else
      authenticate_user
    end
  end
  
  def update
    supplier = Supplier.find(params[:id])
    supplier.update(
      name: params[:name] || supplier.name,
      email: params[:email] || supplier.email,
      phone_number: params[:phone_number] || supplier.phone_number
    )
    if supplier.save
      render json: supplier
    else
      render json: {errors: supplier.errors.full_messages}
    end
  end

  def destroy
    supplier = supplier.find(params[:id])
    supplier.delete
    render json: {message: "This supplier has been removed from the database"}
  end
end
