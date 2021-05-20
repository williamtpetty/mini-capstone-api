class ProductSerializer < ActiveModel::Serializer
  
  # You can add your initial attributes as symbols, as well as your Model methods you have defined in the product model
  attributes :id, :name, :price, :description, :inventory, :is_discounted?, :tax, :total, :supplier_name, :supplier_id, :images

end

# 