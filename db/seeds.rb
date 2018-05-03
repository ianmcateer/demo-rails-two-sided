# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
  { name: 'ianmcateer',
    email: 'ian@ss',
    password: '1234567'
  },
])


listings = Listing.create([
  { name: "Fender American Standard Stratocaster Electric Guitar",
    description: "2006 Fender USA Stratocaster featuring slim maple neck with rosewood fingerboard, 3 tone sunburst alder body,
     mint guard, and Fender Noiseless pickups. Original bridge modified with steel block saddles. Includes hard shell case.
       Found Sound Australia Pty Ltd. 155 Elgin Street (Via Markov Place) Carlton, VIC 3053 Australia",
    price:1748
    image:
    user_id:
  }
  ])
