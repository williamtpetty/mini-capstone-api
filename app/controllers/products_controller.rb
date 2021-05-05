class ProductsController < ApplicationController

  def single_tomato_data
    first_item = Product.first
    render json: {tomato: first_item}
  end

end
