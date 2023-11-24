# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require "open-uri"

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

evening_gown_image = URI.open("https://images.pexels.com/photos/2173357/pexels-photo-2173357.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
evening_gown = Item.new(name: "Elegant Evening Gown", description: "A stunning gown for special occasions.", price: 20, user: sandra, category: dresses)
evening_gown.cover.attach(io: evening_gown_image, filename: "image/evening_gown")
evening_gown.save

floral_dress_image = URI.open("https://images.unsplash.com/photo-1511130558090-00af810c21b1?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
floral_dress = Item.new(name: "Floral Summer Dress", description: "Light and breezy for a perfect summer day.", price: 12, user: camilla, category: dresses)
floral_dress.cover.attach(io: floral_dress_image, filename: "image/floral_dress")
floral_dress.save

lbd_image = URI.open("https://images.pexels.com/photos/11930775/pexels-photo-11930775.jpeg")
lbd = Item.new(name: "Classic Little Black Dress", description: "A timeless wardrobe staple for any occasion.", price: 14.50, user: serena, category: dresses)
lbd.cover.attach(io: lbd_image, filename: "image/lbd")
lbd.save

bohemian_dress_image = URI.open("https://images.pexels.com/photos/5128677/pexels-photo-5128677.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
bohemian_dress = Item.new(name: "Bohemian Maxi Dress", description: "Flowy and free-spirited for a boho chic look.", price: 8, user: gavin, category: dresses)
bohemian_dress.cover.attach(io: bohemian_dress_image, filename: "image/bohemian_dress")
bohemian_dress.save


striped_midi_image = URI.open("https://images.pexels.com/photos/15555009/pexels-photo-15555009/free-photo-of-beautiful-brunette-woman-in-dress-with-blue-stripes.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
striped_midi = Item.new(name: "Casual Striped Midi Dress", description: "Comfortable and stylish for everyday wear.", price: 16, user: serena, category: dresses)
striped_midi.cover.attach(io: striped_midi_image, filename: "image/striped_midi")
striped_midi.save

cocktail_dress_image = URI.open("https://images.pexels.com/photos/16152516/pexels-photo-16152516/free-photo-of-a-woman-in-a-green-dress-and-red-purse.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
cocktail_dress = Item.new(name: "Chic Cocktail Dress", description: "Sleek and sophisticated for cocktail parties.", price: 28, user: camilla, category: dresses)
cocktail_dress.cover.attach(io: cocktail_dress_image, filename: "image/cocktail_dress")
cocktail_dress.save

wedding_gown_image = URI.open("https://images.pexels.com/photos/4010455/pexels-photo-4010455.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
wedding_gown = Item.new(name: "Vintage Lace Wedding Gown", description: "Timeless elegance for your special day.", price: 149.99, user: camilla, category: dresses)
wedding_gown.cover.attach(io: wedding_gown_image, filename: "image/wedding_gown")
wedding_gown.save

puts "50%"

boho_dress_image = URI.open("https://images.pexels.com/photos/5376248/pexels-photo-5376248.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
boho_dress = Item.new(name: "Boho Floral Maxi Dress", description: "Effortlessly chic for bohemian vibes.", price: 69.99, user: serena, category: dresses)
boho_dress.cover.attach(io: boho_dress_image, filename: "image/boho_dress")
boho_dress.save

wrap_dress_image = URI.open("https://images.pexels.com/photos/8031791/pexels-photo-8031791.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
wrap_dress = Item.new(name: "Wrap Midi Dress", description: "Versatile and stylish for any occasion.", price: 44.99, user: gavin, category: dresses)
wrap_dress.cover.attach(io: wrap_dress_image, filename: "image/wrap_dress")
wrap_dress.save

red_dress_image = URI.open("https://images.unsplash.com/photo-1612336307429-8a898d10e223?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
red_dress = Item.new(name: "Bold Red Party Dress", description: "Make a statement at your next event.", price: 79.99, user: serena, category: dresses)
red_dress.cover.attach(io: red_dress_image, filename: "image/red_dress")
red_dress.save

denim_dress_image = URI.open("https://images.pexels.com/photos/5054065/pexels-photo-5054065.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
denim_dress = Item.new(name: "Denim Overall Dress", description: "Casual cool with a touch of retro.", price: 54.99, user: sandra, category: dresses)
denim_dress.cover.attach(io: denim_dress_image, filename: "image/denim_dress")
denim_dress.save

tea_dress_image = URI.open("https://images.unsplash.com/photo-1600096194430-6abeb891abab?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
tea_dress = Item.new(name: "Tea Dress", description: "Sweet and feminine for everyday charm.", price: 34.99, user: camilla, category: dresses)
tea_dress.cover.attach(io: tea_dress_image, filename: "image/tea_dress")
tea_dress.save



fedora_image = URI.open("https://images.unsplash.com/photo-1642171442112-ba377806593b?q=80&w=2781&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
fedora = Item.new(name: "Classic Fedora", description: "Timeless style for any season.", price: 12.99, user: sandra, category: hats)
fedora.cover.attach(io: fedora_image, filename: "image/fedora")
fedora.save


sun_hat_image = URI.open("https://images.pexels.com/photos/6729622/pexels-photo-6729622.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
sun_hat = Item.new(name: "Wide-Brim Sun Hat", description: "Stay cool and stylish in the sun.", price: 10.99, user: camilla, category: hats)
sun_hat.cover.attach(io: sun_hat_image, filename: "image/sun_hat")
sun_hat.save

knit_beanie_image = URI.open("https://images.unsplash.com/photo-1612887726773-e64e20cf08fe?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
knit_beanie = Item.new(name: "Knit Beanie", description: "Warm and cozy for chilly days.", price: 8.99, user: serena, category: hats)
knit_beanie.cover.attach(io: knit_beanie_image, filename: "image/knit_beanie")
knit_beanie.save

bucket_hat_image = URI.open("https://images.unsplash.com/photo-1624518681328-bc59eefa1ce4?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
bucket_hat = Item.new(name: "Bucket Hat", description: "Casual and trendy for urban adventures.", price: 14.99, user: gavin, category: hats)
bucket_hat.cover.attach(io: bucket_hat_image, filename: "image/bucket_hat")
bucket_hat.save

flat_cap_image = URI.open("https://images.unsplash.com/photo-1679666715413-1e6abc4710ea?q=80&w=2865&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
flat_cap = Item.new(name: "The Peaky Blinder Cap", description: "I bet you can pull off this cap better than Tommy Shelby.", price: 11.99, user: sandra, category: hats)
flat_cap.cover.attach(io: flat_cap_image, filename: "image/flat_cap")
flat_cap.save

sports_cap_image = URI.open("https://images.unsplash.com/photo-1620743364195-6915419c6dc6?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
sports_cap = Item.new(name: "Sports Cap", description: "Show your team spirit in style.", price: 7.99, user: camilla, category: hats)
sports_cap.cover.attach(io: sports_cap_image, filename: "image/sports_cap")
sports_cap.save

straw_hat_image = URI.open("https://images.pexels.com/photos/8362266/pexels-photo-8362266.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
straw_hat = Item.new(name: "Floppy Straw Hat", description: "Perfect for beach days and picnics.", price: 9.99, user: serena, category: hats)
straw_hat.cover.attach(io: straw_hat_image, filename: "image/straw_hat")
straw_hat.save

adventure_hat_image = URI.open("https://images.unsplash.com/photo-1560774358-d727658f457c?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
adventure_hat = Item.new(name: "Adventure Hat", description: "Channel your inner adventurer.", price: 16.00, user: gavin, category: hats)
adventure_hat.cover.attach(io: adventure_hat_image, filename: "image/adventure_hat")
adventure_hat.save

beret_image = URI.open("https://images.pexels.com/photos/9811211/pexels-photo-9811211.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
beret = Item.new(name: "Fashion Beret", description: "Parisian flair for your everyday look.", price: 13.50, user: sandra, category: hats)
beret.cover.attach(io: beret_image, filename: "image/beret")
beret.save

red_cap_image = URI.open("https://images.unsplash.com/photo-1605306083141-3cca30078186?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
red_cap = Item.new(name: "Red Cap", description: "Make America Great Again. controversial cap.", price: 15.75, user: camilla, category: hats)
red_cap.cover.attach(io: red_cap_image, filename: "image/red_cap")
red_cap.save

beanie_image = URI.open("https://images.pexels.com/photos/2460527/pexels-photo-2460527.jpeg?auto=compress&cs=tinysrgb&w=600")
beanie = Item.new(name: "Beanie with Pom-Pom", description: "Playful and stylish for winter warmth.", price: 5.99, user: serena, category: hats)
beanie.cover.attach(io: beanie_image, filename: "image/beanie")
beanie.save

white_cap_image = URI.open("https://images.unsplash.com/photo-1588850561407-ed78c282e89b?q=80&w=2836&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
white_cap = Item.new(name: "Faded Cap", description: "Casual cool for a laid-back vibe.", price: 8.50, user: gavin, category: hats)
white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
white_cap.save

puts "70%"

# sunglasses_image = URI.open("")
# sunglasses = Item.new(name: "Stylish Sunglasses", description: "Complete your look with these chic shades.", price: 12.99, user: sandra, category: accessories)
# sunglasses.cover.attach(io: sunglasses_image, filename: "image/sunglasses")
# sunglasses.save

# wallet_image = URI.open("")
# wallet = Item.new(name: "Leather Wallet", description: "A sleek and functional accessory for your essentials.", price: 10.99, user: camilla, category: accessories)
# wallet.cover.attach(io: wallet_image, filename: "image/wallet")
# wallet.save

# earrings_image = URI.open("")
# earrings = Item.new(name: "Statement Earrings", description: "Add a touch of glamour to any outfit.", price: 8.99, user: serena, category: accessories)
# earrings.cover.attach(io: earrings_image, filename: "image/earrings")
# earrings.save

# watch_image = URI.open("")
# watch = Item.new(name: "Classic Watch", description: "Timeless elegance for your wrist.", price: 14.99, user: gavin, category: accessories)
# watch.cover.attach(io: watch_image, filename: "image/watch")
# watch.save

# beaded_bracelet_image = URI.open("")
# beaded_bracelet = Item.new(name: "Boho Beaded Bracelet Set", description: "Express your free spirit with these bohemian bracelets.", price: 11.99, user: sandra, category: accessories)
# beaded_bracelet.cover.attach(io: beaded_bracelet_image, filename: "image/beaded_bracelet")
# beaded_bracelet.save

# crossbody_bag_image = URI.open("")
# crossbody_bag = Item.new(name: "Chic Crossbody Bag", description: "A stylish and convenient accessory for on-the-go.", price: 7.99, user: camilla, category: accessories)
# crossbody_bag.cover.attach(io: crossbody_bag_image, filename: "image/crossbody_bag")
# crossbody_bag.save

# scarf_image = URI.open("")
# scarf = Item.new(name: "Cozy Scarf", description: "Wrap up in warmth with this soft and cozy scarf.", price: 9.99, user: serena, category: accessories)
# scarf.cover.attach(io: scarf_image, filename: "image/scarf")
# scarf.save

# backpack_image = URI.open("")
# backpack = Item.new(name: "Trendy Backpack", description: "Upgrade your everyday style with this fashionable backpack.", price: 16.00, user: gavin, category: accessories)
# backpack.cover.attach(io: backpack_image, filename: "image/backpack")
# backpack.save

# necklace_image = URI.open("")
# necklace = Item.new(name: "Layered Necklace", description: "Elevate your neckline with this trendy layered necklace.", price: 13.50, user: sandra, category: accessories)
# necklace.cover.attach(io: necklace_image, filename: "image/necklace")
# necklace.save

# headband_image = URI.open("")
# headband = Item.new(name: "Printed Headband", description: "Top off your look with a cute and stylish headband.", price: 15.75, user: camilla, category: accessories)
# headband.cover.attach(io: headband_image, filename: "image/headband")
# headband.save

# tote_bag_image = URI.open("")
# tote_bag = Item.new(name: "Patterned Tote Bag", description: "A versatile tote for carrying your essentials in style.", price: 5.99, user: serena, category: accessories)
# tote_bag.cover.attach(io: tote_bag_image, filename: "image/tote_bag")
# tote_bag.save

# belt_image = URI.open("")
# belt = Item.new(name: "Classic Belt", description: "Complete your outfit with this timeless accessory.", price: 8.50, user: gavin, category: accessories)
# belt.cover.attach(io: belt_image, filename: "image/belt")
# belt.save


# sneakers_image = URI.open("")
# sneakers = Item.new(name: "Classic Sneakers", description: "Versatile and comfortable for everyday wear.", price: 14.99, user: sandra, category: shoes)
# sneakers.cover.attach(io: sneakers_image, filename: "image/sneakers")
# sneakers.save

# sandals_image = URI.open("")
# sandals = Item.new(name: "Strappy Sandals", description: "Elevate your style with these chic sandals.", price: 12.99, user: camilla, category: shoes)
# sandals.cover.attach(io: sandals_image, filename: "image/sandals")
# sandals.save

# slip_ons_image = URI.open("")
# slip_ons = Item.new(name: "Casual Slip_Ons", description: "Easy and stylish slip-on shoes for a laid-back look.", price: 8.99, user: serena, category: shoes)
# slip_ons.cover.attach(io: slip_ons_image, filename: "image/slip-ons")
# slip_ons.save

# high_heels_image = URI.open("")
# high_heels = Item.new(name: "High Heel Pumps", description: "Add a touch of sophistication with these classic pumps.", price: 18.99, user: gavin, category: shoes)
# high_heels.cover.attach(io: high_heels_image, filename: "image/high_heels")
# high_heels.save

# running_shoes_image = URI.open("")
# running_shoes = Item.new(name: "Athletic Running Shoes", description: "Designed for performance and style on the track.", price: 15.99, user: sandra, category: shoes)
# running_shoes.cover.attach(io: running_shoes_image, filename: "image/running_shoes")
# running_shoes.save

# boots_image = URI.open("")
# boots = Item.new(name: "Fashionable Boots", description: "Stay on-trend with these stylish and comfortable boots.", price: 10.99, user: camilla, category: shoes)
# boots.cover.attach(io: boots_image, filename: "image/boots")
# white_cap.save

# espadrilles_image = URI.open("")
# espadrilles = Item.new(name: "Espadrille Flats", description: "A summertime staple for casual and comfortable style.", price: 20.00, user: serena, category: shoes)
# espadrilles.cover.attach(io: espadrilles_image, filename: "image/espadrilles")
# espadrilles.save

# oxford_shoes_image = URI.open("")
# oxford_shoes = Item.new(name: "Classic Oxford Shoes", description: "Timeless elegance for a polished look.", price: 16.50, user: gavin, category: shoes)
# oxford_shoes.cover.attach(io: oxforsd_shoes_image, filename: "image/oxforsd_shoes")
# oxford_shoes.save

# ankle_boots_image = URI.open("")
# ankle_boots = Item.new(name: "Suede Ankle Boots", description: "Add a touch of luxe to your outfit with these ankle boots.", price: 13.75, user: sandra, category: shoes)
# ankle_boots.cover.attach(io: ankle_boots_image, filename: "image/ankle_boots")
# ankle_boots.save

# platform_sneakers_image = URI.open("")
# platform_sneakers = Item.new(name: "Platform Sneakers", description: "Elevate your street style with these trendy platform sneakers.", price: 16.99, user: camilla, category: shoes)
# platform_sneakers.cover.attach(io: platform_sneakers_image, filename: "image/platform_sneakers")
# platform_sneakers.save

# flats_image = URI.open("")
# flats = Item.new(name: "Comfortable Flats", description: "Stylish and comfortable flats for all-day wear.", price: 7.99, user: serena, category: shoes)
# flats.cover.attach(io: flats_image, filename: "image/flats")
# flats.save

# loafers_image = URI.open("")
# loafers = Item.new(name: "Classic Loafers", description: "A sophisticated choice for both casual and formal occasions.", price: 9.50, user: gavin, category: shoes)
# loafers.cover.attach(io: loafers_image, filename: "image/loafers")
# loafers.save


# jeans_image = URI.open("")
# jeans = Item.new(name: "Slim Fit Jeans", description: "A classic staple for casual and versatile outfits.", price: 14.99, user: sandra, category: trousers)
# jeans.cover.attach(io: jeans_image, filename: "image/jeans")
# jeans.save

# tailored_pants_image = URI.open("")
# tailored_pant = Item.new(name: "Tailored Dress Pants", description: "Elevate your professional look with these tailored pants.", price: 12.99, user: camilla, category: trousers)
# tailored_pants.cover.attach(io: tailored_pants_image, filename: "image/tailored_pants")
# tailored_pants.save

# joggers_image = URI.open("")
# joggers = Item.new(name: "Comfy Joggers", description: "Stay comfortable and stylish with these casual joggers.", price: 8.99, user: serena, category: trousers)
# joggers.cover.attach(io: joggers_image, filename: "image/joggers")
# joggers.save

# wide_leg_image = URI.open("")
# wide_leg = Item.new(name: "Wide Leg Trousers", description: "Make a statement with these fashionable wide-leg trousers.", price: 18.99, user: gavin, category: trousers)
# wide_leg.cover.attach(io: wide_leg_image, filename: "image/wide_leg")
# wide_leg.save

# leggings_image = URI.open("")
# leggings = Item.new(name: "Athleisure Leggings", description: "Perfect for workouts or casual athleisure style.", price: 15.99, user: sandra, category: trousers)
# leggings.cover.attach(io: leggings_image, filename: "image/leggings")
# leggings.save

# culottes_image = URI.open("")
# culottes = Item.new(name: "Cropped Culottes", description: "Stay on-trend with these chic and comfortable culottes.", price: 10.99, user: camilla, category: trousers)
# culottes.cover.attach(io: culottes_image, filename: "image/culottes")
# culottes.save

# cargos_image = URI.open("")
# cargos = Item.new(name: "Cargo Pants", description: "A versatile choice with plenty of pockets for a utilitarian look.", price: 20.00, user: serena, category: trousers)
# cargos.cover.attach(io: cargos_image, filename: "image/cargos")
# cargos.save

# palazzo_image = URI.open("")
# palazzo = Item.new(name: "High Waist Palazzo Pants", description: "Achieve a glamorous look with these high-waisted palazzo pants.", price: 16.50, user: gavin, category: trousers)
# palazzo.cover.attach(io: palazzo_image, filename: "image/palazzo")
# palazzo.save

# shorts_image = URI.open("")
# shorts = Item.new(name: "Denim Shorts", description: "Casual and cool for warm weather styling.", price: 13.75, user: sandra, category: trousers)
# shorts.cover.attach(io: shorts_image, filename: "image/shorts")
# shorts.save

# chinos_image = URI.open("")
# chinos = Item.new(name: "Chino Trousers", description: "A versatile and polished option for various occasions.", price: 16.99, user: camilla, category: trousers)
# chinos.cover.attach(io: chinos_image, filename: "image/chinos")
# chinos.save

# stretchy_image = URI.open("")
# stretchy = Item.new(name: "Stretchy Leggings", description: "Comfortable and flexible leggings for everyday wear.", price: 7.99, user: serena, category: trousers)
# stretchy.cover.attach(io: stretchy_image, filename: "image/stretchy")
# stretchy.save

# cargo_joggers_image = URI.open("")
# cargo_joggers = Item.new(name: "Cargo Jogger Pants", description: "Combine style and comfort with these trendy cargo joggers.", price: 9.50, user: gavin, category: trousers)
# cargo_joggers.cover.attach(io: cargo_joggers_image, filename: "image/cargo_joggers")
# cargo_joggers.save



white_shirt = URI.open("https://images.unsplash.com/photo-1602810316498-ab67cf68c8e1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
shirt = Item.new(name: "Classic White Button-Up", description: "A timeless and versatile piece for any wardrobe.", price: 24.99, user: sandra, category: shirts)
shirt.cover.attach(io: white_shirt, filename: "image/white_shirt")
shirt.save

# white_cap_image = URI.open("")
# Item.new(name: "Casual Striped T-Shirt", description: "Comfortable and stylish for everyday wear.", price: 18.99, user: camilla, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "Denim Chambray Shirt", description: "A versatile denim shirt for a laid-back look.", price: 12.99, user: serena, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "Printed Hawaiian Shirt", description: "Channel tropical vibes with a fun printed Hawaiian shirt.", price: 29.99, user: gavin, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "Long Sleeve Henley", description: "Casual and cool with a laid-back vibe.", price: 22.99, user: sandra, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "Plaid Flannel Shirt", description: "Stay cozy and on-trend with a classic plaid flannel.", price: 16.99, user: camilla, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "Oxford Button-Down", description: "A polished choice for a smart-casual look.", price: 30.00, user: serena, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "Linen Short Sleeve Shirt", description: "Perfect for warm weather with a breathable linen fabric.", price: 25.50, user: gavin, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "Graphic Print Tee", description: "Express your style with a unique graphic print tee.", price: 20.75, user: sandra, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "Slim Fit Dress Shirt", description: "A tailored option for a sharp and sophisticated look.", price: 26.99, user: camilla, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "V-Neck Sweater", description: "Stay warm and stylish with a classic v-neck sweater.", price: 15.99, user: serena, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save

# white_cap_image = URI.open("")
# Item.new(name: "Casual Polo Shirt", description: "Effortlessly stylish for a polished casual look.", price: 18.50, user: gavin, category: shirts)
# white_cap.cover.attach(io: white_cap_image, filename: "image/white_cap")
# white_cap.save


shirt_purchase = Transaction.create!(item: shirt, user: camilla, price: 24.99)
# shoe_purchase = Transaction.create!(item: shoe, user: camilla, price: 14.99)

Review.create!(rating: 4, transaction_id: shirt_purchase.id, content: "Love the shirt")
# Review.create!(rating: 5, transaction_id: shoe_purchase.id, content: "Super happy with the purchase")

Favourite.create!(item: shirt, user: serena)
# Favourite.create!(item: shoe, user: camilla)
