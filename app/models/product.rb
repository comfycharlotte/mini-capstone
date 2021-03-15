class Product < ApplicationRecord 
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true }

  belongs_to :supplier  
  
  has_many :images
  has_many :orders
  has_many :product_categories
  has_many :categories, through: :product_categories, source: :category
  has_many :carted_products

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