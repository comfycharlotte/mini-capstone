class AddForeignKeyToProductCategory < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :product_categories, :products
    add_foreign_key :product_categories, :categories
  end
end
