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
    description: "Consolidating my gear. I am the only owner... bought this is Japan when I lived there in 2002. Hardly used... kept in case... really a beautiful guitar.",
    price: 1098,
    image: Rails.root.join('app', 'assets', 'images', 'fender.png').open,
    user_id: 2,
    category_id: 1,
  }
  ])

  listings = Listing.create([
    { name: "PRS McCarty Hollowbody Spruce 2002 Natural",
      description: "2006 Fender USA Stratocaster featuring slim maple neck with rosewood fingerboard, 3 tone sunburst alder body,
       mint guard, and Fender Noiseless pickups. Original bridge modified with steel block saddles. Includes hard shell case.
         Found Sound Australia Pty Ltd. 155 Elgin Street (Via Markov Place) Carlton, VIC 3053 Australia",
      price:1748,
      image: Rails.root.join('app', 'assets', 'images', 'electric_guitar_2.jpg').open,
      user_id: 2,
      category_id: 1,
    }
    ])

  listings = Listing.create([
    { name: "Kathleen Wingert E (Grand Concert) 2001 Spruce/Rosewood",
      description: "Beautiful 2001 Kathy Wingert Model E Grand Concert in excellent condition.  Extraordinary tone with depth, warmth and great clarity and balance, and crazy-great harmonics.  Sitka spruce top, East Indian rosewood sides and back, koa binding, mahogany neck and ebony fingerboard.  Spectacular MOP inlay from 11th through 17th fret.  Beautiful scallop at the base of the headstock.  A truly spectacular work of art from one of the country's greatest and most celebrated luthiers.
      With a Baggs piezo pickup under the saddle (with hidden soundhole volume control), and a custom Cedar Creek case.  Note: there are two very small dings near the base of the guitar as shown in the photo.  Otherwise, the instrument is flawless.  ",
      price: 3748,
      image: Rails.root.join('app', 'assets', 'images', 'acoustic_guitar_1.jpg').open,
      user_id: 2,
      category_id: 2,
    }
    ])

  listings = Listing.create([
    { name: "Martin D28 1974 Aged Natural Gloss",
      description: "Absolutely pristine condition. Never saw my father play it in 35 years. Still has original plastic protective sticker on pick guard that is only peeling slightly (see picture). Shipping available. If you've been waiting for something special, this is it!  Make an offer.",
      price: 1500,
      image: Rails.root.join('app', 'assets', 'images', 'acoustic_guitar_2.jpg').open,
      user_id: 2,
      category_id: 2,
    }
    ])

  listings = Listing.create([
    { name: "Blackstar HT Club 40",
      description: "With two channels and four modes, the Blackstar HT Club 40 is the perfect tube amp for gigging in small clubs without breaking the bank. Choose between the clean channel, which has boutique and modern modes for tons of tonal variation, or the overdrive channel, to get fully EQ-able, defined overdrive. The OD channel boasts two more modes: classic crunch and super saturated lead. So many options may be overwhelming, but the HT Club 40 is an intuitive, streamlined combo amp that just makes sense for the gigging musician.",
      price: 900,
      image: Rails.root.join('app', 'assets', 'images', 'amp_1.jpg').open,
      user_id: 2,
      category_id: 4,
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
