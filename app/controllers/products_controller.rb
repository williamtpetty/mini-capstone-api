class ProductsController < ApplicationController

  def all_tomato_data
    render json: {tomatos_for_sale: Product.all}
  end

  def pull_first_tomato
    render json: {tomatos_for_sale: Product.first}
  end

  def pull_last_tomato
    render json: {tomatos_for_sale: Product.last}
  end

end
