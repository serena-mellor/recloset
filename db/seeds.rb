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
trousers = Category.create!(name: "Trousers")
accessories = Category.create!(name: "Accessories")

Item.create!(name: "Elegant Evening Gown", description: "A stunning gown for special occasions.", price: 20, user: sandra, category: dresses)
Item.create!(name: "Floral Summer Dress", description: "Light and breezy for a perfect summer day.", price: 12, user: camilla, category: dresses)
Item.create!(name: "Classic Little Black Dress", description: "A timeless wardrobe staple for any occasion.", price: 14.50, user: serena, category: dresses)
Item.create!(name: "Bohemian Maxi Dress", description: "Flowy and free-spirited for a boho chic look.", price: 8, user: gavin, category: dresses)
Item.create!(name: "Casual Striped Midi Dress", description: "Comfortable and stylish for everyday wear.", price: 16, user: serena, category: dresses)
Item.create!(name: "Chic Cocktail Dress", description: "Sleek and sophisticated for cocktail parties.", price: 28, user: camilla, category: dresses)
Item.create!(name: "Vintage Lace Wedding Gown", description: "Timeless elegance for your special day.", price: 149.99, user: camilla, category: dresses)
Item.create!(name: "Boho Floral Maxi Dress", description: "Effortlessly chic for bohemian vibes.", price: 69.99, user: serena, category: dresses)
Item.create!(name: "Striped Wrap Midi Dress", description: "Versatile and stylish for any occasion.", price: 44.99, user: gavin, category: dresses)
Item.create!(name: "Bold Red Party Dress", description: "Make a statement at your next event.", price: 79.99, user: serena, category: dresses)
Item.create!(name: "Denim Overall Dress", description: "Casual cool with a touch of retro.", price: 54.99, user: sandra, category: dresses)
Item.create!(name: "Floral Print Tea Dress", description: "Sweet and feminine for everyday charm.", price: 34.99, user: camilla, category: dresses)

Item.create!(name: "Classic Fedora", description: "Timeless style for any season.", price: 12.99, user: sandra, category: hats)
Item.create!(name: "Wide-Brim Sun Hat", description: "Stay cool and stylish in the sun.", price: 10.99, user: camilla, category: hats)
Item.create!(name: "Knit Beanie", description: "Warm and cozy for chilly days.", price: 8.99, user: serena, category: hats)
Item.create!(name: "Bucket Hat", description: "Casual and trendy for urban adventures.", price: 14.99, user: gavin, category: hats)
Item.create!(name: "Vintage Bowler Hat", description: "A touch of retro sophistication.", price: 11.99, user: sandra, category: hats)
Item.create!(name: "Sports Cap", description: "Show your team spirit in style.", price: 7.99, user: camilla, category: hats)
Item.create!(name: "Floppy Straw Hat", description: "Perfect for beach days and picnics.", price: 9.99, user: serena, category: hats)
Item.create!(name: "Leather Aviator Hat", description: "Channel your inner adventurer.", price: 16.00, user: gavin, category: hats)
Item.create!(name: "Fashion Beret", description: "Parisian flair for your everyday look.", price: 13.50, user: sandra, category: hats)
Item.create!(name: "Felt Cloche Hat", description: "Vintage charm with a modern twist.", price: 15.75, user: camilla, category: hats)
Item.create!(name: "Beanie with Pom-Pom", description: "Playful and stylish for winter warmth.", price: 5.99, user: serena, category: hats)
Item.create!(name: "Trucker Cap", description: "Casual cool for a laid-back vibe.", price: 8.50, user: gavin, category: hats)

Item.create!(name: "Stylish Sunglasses", description: "Complete your look with these chic shades.", price: 12.99, user: sandra, category: accessories)
Item.create!(name: "Leather Wallet", description: "A sleek and functional accessory for your essentials.", price: 10.99, user: camilla, category: accessories)
Item.create!(name: "Statement Earrings", description: "Add a touch of glamour to any outfit.", price: 8.99, user: serena, category: accessories)
Item.create!(name: "Classic Watch", description: "Timeless elegance for your wrist.", price: 14.99, user: gavin, category: accessories)
Item.create!(name: "Boho Beaded Bracelet Set", description: "Express your free spirit with these bohemian bracelets.", price: 11.99, user: sandra, category: accessories)
Item.create!(name: "Chic Crossbody Bag", description: "A stylish and convenient accessory for on-the-go.", price: 7.99, user: camilla, category: accessories)
Item.create!(name: "Cozy Scarf", description: "Wrap up in warmth with this soft and cozy scarf.", price: 9.99, user: serena, category: accessories)
Item.create!(name: "Trendy Backpack", description: "Upgrade your everyday style with this fashionable backpack.", price: 16.00, user: gavin, category: accessories)
Item.create!(name: "Layered Necklace", description: "Elevate your neckline with this trendy layered necklace.", price: 13.50, user: sandra, category: accessories)
Item.create!(name: "Printed Headband", description: "Top off your look with a cute and stylish headband.", price: 15.75, user: camilla, category: accessories)
Item.create!(name: "Patterned Tote Bag", description: "A versatile tote for carrying your essentials in style.", price: 5.99, user: serena, category: accessories)
Item.create!(name: "Classic Belt", description: "Complete your outfit with this timeless accessory.", price: 8.50, user: gavin, category: accessories)

shoe = Item.create!(name: "Classic Sneakers", description: "Versatile and comfortable for everyday wear.", price: 14.99, user: sandra, category: shoes)
Item.create!(name: "Strappy Sandals", description: "Elevate your style with these chic sandals.", price: 12.99, user: camilla, category: shoes)
Item.create!(name: "Casual Slip-Ons", description: "Easy and stylish slip-on shoes for a laid-back look.", price: 8.99, user: serena, category: shoes)
Item.create!(name: "High Heel Pumps", description: "Add a touch of sophistication with these classic pumps.", price: 18.99, user: gavin, category: shoes)
Item.create!(name: "Athletic Running Shoes", description: "Designed for performance and style on the track.", price: 15.99, user: sandra, category: shoes)
Item.create!(name: "Fashionable Boots", description: "Stay on-trend with these stylish and comfortable boots.", price: 10.99, user: camilla, category: shoes)
Item.create!(name: "Espadrille Flats", description: "A summertime staple for casual and comfortable style.", price: 20.00, user: serena, category: shoes)
Item.create!(name: "Classic Oxford Shoes", description: "Timeless elegance for a polished look.", price: 16.50, user: gavin, category: shoes)
Item.create!(name: "Suede Ankle Boots", description: "Add a touch of luxe to your outfit with these ankle boots.", price: 13.75, user: sandra, category: shoes)
Item.create!(name: "Platform Sneakers", description: "Elevate your street style with these trendy platform sneakers.", price: 16.99, user: camilla, category: shoes)
Item.create!(name: "Comfortable Flats", description: "Stylish and comfortable flats for all-day wear.", price: 7.99, user: serena, category: shoes)
Item.create!(name: "Classic Loafers", description: "A sophisticated choice for both casual and formal occasions.", price: 9.50, user: gavin, category: shoes)

Item.create!(name: "Slim Fit Jeans", description: "A classic staple for casual and versatile outfits.", price: 14.99, user: sandra, category: trousers)
Item.create!(name: "Tailored Dress Pants", description: "Elevate your professional look with these tailored pants.", price: 12.99, user: camilla, category: trousers)
Item.create!(name: "Comfy Joggers", description: "Stay comfortable and stylish with these casual joggers.", price: 8.99, user: serena, category: trousers)
Item.create!(name: "Wide Leg Trousers", description: "Make a statement with these fashionable wide-leg trousers.", price: 18.99, user: gavin, category: trousers)
Item.create!(name: "Athleisure Leggings", description: "Perfect for workouts or casual athleisure style.", price: 15.99, user: sandra, category: trousers)
Item.create!(name: "Cropped Culottes", description: "Stay on-trend with these chic and comfortable culottes.", price: 10.99, user: camilla, category: trousers)
Item.create!(name: "Cargo Pants", description: "A versatile choice with plenty of pockets for a utilitarian look.", price: 20.00, user: serena, category: trousers)
Item.create!(name: "High Waist Palazzo Pants", description: "Achieve a glamorous look with these high-waisted palazzo pants.", price: 16.50, user: gavin, category: trousers)
Item.create!(name: "Denim Shorts", description: "Casual and cool for warm weather styling.", price: 13.75, user: sandra, category: trousers)
Item.create!(name: "Chino Trousers", description: "A versatile and polished option for various occasions.", price: 16.99, user: camilla, category: trousers)
Item.create!(name: "Stretchy Leggings", description: "Comfortable and flexible leggings for everyday wear.", price: 7.99, user: serena, category: trousers)
Item.create!(name: "Cargo Jogger Pants", description: "Combine style and comfort with these trendy cargo joggers.", price: 9.50, user: gavin, category: trousers)

shirt = Item.create!(name: "Classic White Button-Up", description: "A timeless and versatile piece for any wardrobe.", price: 24.99, user: sandra, category: shirts)
Item.create!(name: "Casual Striped T-Shirt", description: "Comfortable and stylish for everyday wear.", price: 18.99, user: camilla, category: shirts)
Item.create!(name: "Denim Chambray Shirt", description: "A versatile denim shirt for a laid-back look.", price: 12.99, user: serena, category: shirts)
Item.create!(name: "Printed Hawaiian Shirt", description: "Channel tropical vibes with a fun printed Hawaiian shirt.", price: 29.99, user: gavin, category: shirts)
Item.create!(name: "Long Sleeve Henley", description: "Casual and cool with a laid-back vibe.", price: 22.99, user: sandra, category: shirts)
Item.create!(name: "Plaid Flannel Shirt", description: "Stay cozy and on-trend with a classic plaid flannel.", price: 16.99, user: camilla, category: shirts)
Item.create!(name: "Oxford Button-Down", description: "A polished choice for a smart-casual look.", price: 30.00, user: serena, category: shirts)
Item.create!(name: "Linen Short Sleeve Shirt", description: "Perfect for warm weather with a breathable linen fabric.", price: 25.50, user: gavin, category: shirts)
Item.create!(name: "Graphic Print Tee", description: "Express your style with a unique graphic print tee.", price: 20.75, user: sandra, category: shirts)
Item.create!(name: "Slim Fit Dress Shirt", description: "A tailored option for a sharp and sophisticated look.", price: 26.99, user: camilla, category: shirts)
Item.create!(name: "V-Neck Sweater", description: "Stay warm and stylish with a classic v-neck sweater.", price: 15.99, user: serena, category: shirts)
Item.create!(name: "Casual Polo Shirt", description: "Effortlessly stylish for a polished casual look.", price: 18.50, user: gavin, category: shirts)

shirt_purchase = Transaction.create!(item: shirt, user: camilla, price: 24.99)
shoe_purchase = Transaction.create!(item: shoe, user: camilla, price: 14.99)

Review.create!(rating: 4, transaction_id: shirt_purchase.id, content: "Love the shirt")
Review.create!(rating: 5, transaction_id: shoe_purchase.id, content: "Super happy with the purchase")

Favourite.create!(item: shirt, user: serena)
Favourite.create!(item: shoe, user: camilla)
