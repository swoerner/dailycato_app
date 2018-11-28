# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Deal.destroy_all
Restaurant.destroy_all
User.destroy_all

tim = User.create!(email: "tim.raue@web.de", first_name: "Tim", last_name: "Raue", password: "123123")

r = Restaurant.create!(name: 'Soup Kultur', location: "Markgrafenstr. 12, 10117 Berlin",  cuisine: "salad", user: tim, remote_photo_url: 'https://res.cloudinary.com/duh9oaa44/image/upload/v1542981947/timraue.jpg')
c = Restaurant.create!(name: 'Charlotte 1', location: "Charlottenstr. 1, 10969 Berlin",  cuisine: "gastropub", user: tim, remote_photo_url: 'https://res.cloudinary.com/duh9oaa44/image/upload/v1542981947/charlotte1.jpg')
a = Restaurant.create!(name: 'Avan', location: "Mauerstr. 81, 10117 Berlin",  cuisine: "asian", user: tim, remote_photo_url: 'https://res.cloudinary.com/duh9oaa44/image/upload/v1542981944/avan.jpg')
Restaurant.create!(name: 'Ishin', location: "Charlottenstr. 16, 10117 Berlin",  cuisine: "japanese", user: tim, remote_photo_url: 'https://res.cloudinary.com/duh9oaa44/image/upload/v1542981944/ishin.jpg')
Restaurant.create!(name: 'Goodtime', location: "Hausvogteiplatz 11, 10117 Berlin",  cuisine: "asian", user: tim, remote_photo_url: 'https://res.cloudinary.com/duh9oaa44/image/upload/v1542981944/goodtime.jpg')
Restaurant.create!(name: 'Ristorante Sale e Tabacchi', location: "Rudi-Dutschke-Str. 23, 10969 Berlin",  cuisine: "italian", user: tim, remote_photo_url: 'https://res.cloudinary.com/duh9oaa44/image/upload/v1542981944/ristorantesaleetabacchi.jpg')
Restaurant.create!(name: 'Otito', location: "Leipziger Str. 30, 10117 Berlin",  cuisine: "vietnamese", user: tim, remote_photo_url: 'https://res.cloudinary.com/duh9oaa44/image/upload/v1542981944/otito.jpg')
Restaurant.create!(name: 'Kirsons Charlotte', location: "Charlottenstr. 13, 10969",  cuisine: "eastern european", user: tim, remote_photo_url: 'https://res.cloudinary.com/duh9oaa44/image/upload/v1542981944/kirsonscharlotte.jpg')
Restaurant.create!(name: 'Chupenga', location: "Charlottenstr. 4, 10969 Berlin",  cuisine: "burrito", user: tim, remote_photo_url: 'https://res.cloudinary.com/duh9oaa44/image/upload/v1542981944/chupenga.jpg')
Restaurant.create!(name: 'Tim Raue', location: "Rudi-Dutschke-Str. 26, 10969 Berlin",  cuisine: "modern european", user: tim)
Restaurant.create!(name: 'Dylan', location: "Spreeufer 3, 10969 Berlin",  cuisine: "french", user: tim)

Deal.create!(name: "Brokkolicremesuppe", description: "mit gerösteten Mandeln und frischen Kräutern", food_type: "modern european" , price: 4, restaurant: r)
Deal.create!(name: "Vegane Karottensuppe", description: "mit Ingwer, Sojamilch und karamellisierter roter Bete", food_type: "modern european" , price: 6, restaurant: r)
Deal.create!(name: "Bunte Gemüsesuppe", description: "mit Wiener Würstchen, Croûtons und Petersilie", food_type: "modern european" , price: 5, restaurant: r)
Deal.create!(name: "Buchweizen-Hackfleischtopf", description: "mit Paprika und Koriander", food_type: "modern european" , price: 3, restaurant: r)
Deal.create!(name: "Thailändische grüne Currysuppe", description: "mit geflügelstreifen, asiatischem Gemüse und Koriander", food_type: "modern european" , price: 4, restaurant: r)

Deal.create!(name: "Schnitzel", description: "mit Pommes Frites und Preiselbeeren", food_type: "modern european" , price: 5, restaurant: c)
Deal.create!(name: "Jägerschnitzel", description: "in Pilzrahmsauce und Kroketten", food_type: "modern european" , price: 5, restaurant: c)
Deal.create!(name: "Zigeunerschnitzel", description: "mit Pommes Frites", food_type: "modern european" , price: 5, restaurant: c)

Deal.create!(name: "Spaghetti Carbonara", description: "mit Speck in Käsesahnesauce", food_type: "modern european" , price: 4, restaurant: a)
Deal.create!(name: "Spaghetti Bolognese", description: "mit Fleischbällchen und Tomatensauce", food_type: "modern european" , price: 4, restaurant: a)
Deal.create!(name: "Pizza Hawaii", description: "mit Schinken und Ananas", food_type: "modern european" , price: 4, restaurant: a)
Deal.create!(name: "Pizza Frutti de Mare", description: "mit Scampis und Meeresfrüchten", food_type: "modern european" , price: 4, restaurant: a)
Deal.create!(name: "Pizza Mageritha", description: "mit Käse und Tomatensauce", food_type: "modern european" , price: 4, restaurant: a)
