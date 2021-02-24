# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

40.times do
  Product.new(name: Faker::Food.dish, price: Faker::Number.decimal(l_digits: 2), image_url: "google.com/image.png", description: Faker::Food.description).save
end
