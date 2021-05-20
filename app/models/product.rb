class Product < ApplicationRecord
  
  validates :name, :presence => true # ruby syntax
  validates :price, numericality: {greater_than: 0} # JS syntax
  validates :description, length: {in: 5..500}
  validates :inventory, numericality: {greater_than: 0}

  # These are called model methods, you add them to serializer & they can be called in controller
  def is_discounted?
    inventory < 5
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  belongs_to :supplier # This does what the method below does
  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end

  def supplier_name # Does this work?
    supplier.name
  end
end
