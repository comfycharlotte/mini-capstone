class AddProductCategoryIdToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :product_category_id, :integer
  end
end
