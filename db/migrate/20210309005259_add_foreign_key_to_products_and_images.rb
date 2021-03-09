class AddForeignKeyToProductsAndImages < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :image_id, :integer
    add_column :images, :product_id, :integer 
    add_foreign_key :products, :images
    add_foreign_key :images, :products
  end
end
