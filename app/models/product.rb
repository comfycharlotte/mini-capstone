class Product < ApplicationRecord 
  belongs_to :supplier  
  belongs_to :product_categories
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :images
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