# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
Favourite.destroy_all
Transaction.destroy_all
Review.destroy_all
Item.destroy_all
Category.destroy_all
User.destroy_all

camilla = User.create!(username: "camilla", first_name: "Camilla", last_name: "Ligovic", password: "123456", email: "camilla.ligovic@gmail.com")
gavin = User.create!(username: "gavin", first_name: "Gavin", last_name: "Wotton", password: "abcdef", email: "gavin.wotton@gmail.com")
serena = User.create!(username: "serena", first_name: "Serena", last_name: "Mellor", password: "234567", email: "serena@gmail.com")
sandra = User.create!(username: "sandra", first_name: "Sandra", last_name: "Luukas", password: "654321", email: "sandra@gmail.com")

shoes = Category.create!(name: "Shoes")
shirts = Category.create!(name: "Shirts")
hats = Category.create!(name: "Hats")
dresses = Category.create!(name: "Dresses")

shirt = Item.create!(name: "shirt", description: "nice shirt", price: 5.99, user: sandra, category: shirts)
shoe = Item.create!(name: "shoes", description: "very cool shoes", price: 10.5, user: gavin, category: shoes)
hat = Item.create!(name: "hat", description: "great hat", price: 2, user: serena, category: hats)
dress = Item.create!(name: "dress", description: "lovely dress", price: 8, user: camilla, category: dresses)

four = Review.create!(rating: 4, content: "Love the shirt")
three = Review.create!(rating: 3, content: "Super happy with the purchase")

Transaction.create!(item: shirt, user: sandra, review: four, price: 5.99)
Transaction.create!(item: shoe, user: gavin, review: three, price: 10.5)

Favourite.create!(item: hat, user: serena)
Favourite.create!(item: dress, user: camilla)

