class ProductCategory < ApplicationRecord
  belongs_to :product
  belongs_to :category
  has_many :products
  has_many :categories
end
