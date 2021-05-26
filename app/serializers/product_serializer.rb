class ProductSerializer < ActiveModel::Serializer
  
  # You can add your initial attributes as symbols, as well as your Model methods you have defined in the product model
  attributes :id, :name, :price, :description, :inventory, :is_discounted?

  belongs_to :supplier # will list supplier info in json output
  has_many :images # will list array of image hashes in json output
  has_many :categories # will list array of category hashes in json output

end