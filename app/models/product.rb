class Product < ApplicationRecord

  def is_discounted?
    price < 5
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def in_stock?
    true
  end

end
