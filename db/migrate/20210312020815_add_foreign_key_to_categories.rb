class AddForeignKeyToCategories < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :categories, :product_categories
  end
end
