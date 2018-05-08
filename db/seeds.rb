# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create name: :admin

user = User.new
user.email = 'admin@admin.com'
user.password = '1234567'
user.name = 'ian mcateer'
user.add_role :admin
user.id = 1
user.save!

user = User.new
user.email = 'jeffbeck@test.com'
user.password = '1234567'
user.name = 'jeff beck'
user.id = 2
user.save!

user = User.new
user.email = 'annielennox@test.com'
user.password = '1234567'
user.name = 'annie lennox'
user.id = 3
user.save!

category = Category.new
category.name = "Electric Guitar"
category.id = 1
category.save!

category = Category.new
category.name = "Acoustic Guitar"
category.id = 2
category.save!

category = Category.new
category.name = "Bass Guitar"
category.id = 3
category.save!

category = Category.new
category.name = "Amps"
category.id = 4
category.save!

category = Category.new
category.name = "Effects and Pedals"
category.id = 5
category.save!


category = Category.new
category.name = "Drums and Percussion"
category.id = 6
category.save!


category = Category.new
category.name = "Pro Audio"
category.id = 7
category.save!

category = Category.new
category.name = "Keyboards and Synths"
category.id = 8
category.save!

category = Category.new
category.name = "Folk"
category.id = 9
category.save!

category = Category.new
category.name = "Band and Orchestra"
category.id = 10
category.save!

category = Category.new
category.name = "Software"
category.id = 11
category.save!

category = Category.new
category.name = "Accessories"
category.id = 12
category.save!


listings = Listing.create([
  { name: "Fender American Standard Stratocaster Electric Guitar",
    description: "2006 Fender USA Stratocaster featuring slim maple neck with rosewood fingerboard, 3 tone sunburst alder body,
     mint guard, and Fender Noiseless pickups. Original bridge modified with steel block saddles. Includes hard shell case.
       Found Sound Australia Pty Ltd. 155 Elgin Street (Via Markov Place) Carlton, VIC 3053 Australia",
    price:1748,
    image: Rails.root.join('app', 'assets', 'images', 'fender.png').open,
    user_id: 2,
    category_id: 1,
  }
  ])

  mystore = Store.new
  mystore.title = "Sydney Centre"
  mystore.address = "131 York Street"
  mystore.city = "Sydney"
  mystore.state = "NSW"
  mystore.postcode = "2000"
  mystore.country = "Australia"
  mystore.save!
