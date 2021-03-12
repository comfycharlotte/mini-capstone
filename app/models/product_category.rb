class ProductCategory < ApplicationRecord
  belongs_to :products
  belongs_to :categories
  has_many :products
  has_many :categories
end
