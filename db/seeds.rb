# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
tim = User.create!(email: "tim.raue@web.de", first_name: "Tim", last_name: "Raue", password: "123123")

Restaurant.delete_all
restaurants = Restaurant.create!(name: 'Tim Raue', address: "Rudi-Dutschke-Str. 26, 10969 Berlin",  cuisine: "modern european", user: tim)
restaurants = Restaurant.create!(name: 'Dylan', address: "Spreeufer 3, 10969 Berlin",  cuisine: "frensh", user: tim)
