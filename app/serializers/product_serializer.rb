class ProductSerializer < ActiveModel::Serializer
  
  # You can add your initial attributes as symbols, as well as your Model methods you have defined in the product model
  attributes :id, :name, :price, :image_url, :description, :inventory, :is_discounted?, :tax, :total

end
