class Supplier < ApplicationRecord

  has_many :products # This does what the below method would be doing
  # def products
  #   Product.where(supplier_id: id)
  # end

end
