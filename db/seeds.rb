# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(username: "John Smith", first_name: "John", last_name: "Smith", email: "john@gmail.com", password: "123456")
Category.create(name: "Menswear")
Item.create(name: "Coat", description: "Amazing Denim Jacket!!!", price: 10.99, user: User.first, category: Category.first)
