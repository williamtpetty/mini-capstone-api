class SuppliersController < ApplicationController

  def index
    suppliers = Supplier.all
    render json: suppliers
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
    supplier = Supplier.find(params[:id])
    render json: supplier
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
