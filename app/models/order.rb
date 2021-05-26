class Order < ApplicationRecord

  belongs_to :user # you can add this line to the order serializer once it is created
  
  has_many :carted_products
  has_many :products, through: :carted_products

end


