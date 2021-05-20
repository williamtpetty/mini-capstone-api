class ImagesController < ApplicationController

  def index
    image = Image.all
    render json: image
  end

  def create
    image = Image.new(
      url: params[:url], 
      product_id: params[:product_id]
    )
    image.save
    render json: image
  end

  def show
    image = Image.find(params[:id])
    render json: image
  end

  def update
    image = Image.find(params[:id])
    image.update(
      url: params[:url] || image.url,
      product_id: params[:product_id] || image.product_id
    )
    image.save
    render json: image
  end

  def destroy
    image = Image.find(params[:id])
    image.delete
    render json: {message: "Image has been deleted from the database"}
  end

end
