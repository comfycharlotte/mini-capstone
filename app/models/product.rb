class Product < ApplicationRecord 
  belongs_to :supplier
  validates :name, presence: true
  validates :price, presence: true, numericality: {
    greater_than: 0
  }
  validates :quantity, presence: true, numericality: {
    only_integer: true
  }

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax 
    return price * 0.09
  end

  def total
    return price + tax
  end
end