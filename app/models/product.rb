class Product < ApplicationRecord
  def is_discounted?
    if Product.price < 10
      return true
    else
      return false
    end
  end

  def tax 
    return 0.09 * Product.price
  end

  def total
    return Product.price + Product.tax
  end
end
