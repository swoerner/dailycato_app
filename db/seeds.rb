require 'http'
BusinessHour.destroy_all
Deal.destroy_all
Restaurant.destroy_all
User.destroy_all
USER = User.create!(email: "tim.raue@web.de", password: "123123", first_name: "Tim", last_name: "Raue")
API_KEY = ENV["YELP_API"]

# Constants, do not change these
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"
BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path


DEFAULT_BUSINESS_ID = "yelp-san-francisco"
DEFAULT_TERM = "dinner"
DEFAULT_LOCATION = "San Francisco, CA"
SEARCH_LIMIT = 50


def search(term, location) # for ids
  url = "#{API_HOST}#{SEARCH_PATH}"
  params = {
    term: term,
    location: location,
    limit: SEARCH_LIMIT
  }

  response = HTTP.auth("Bearer #{API_KEY}").get(url, params: params)
  response.parse
  array_of_ids = []

  response.parse["businesses"].each do |business|
    array_of_ids << business["id"]
  end

  array_of_ids
end

def search_restaurants_details(array_of_ids)
  array_of_ids.each do |id|
    url = "#{API_HOST}#{BUSINESS_PATH}#{id}"

    response = HTTP.auth("Bearer #{API_KEY}").get(url)
    response.parse
    r = Restaurant.create!(
      name: response.parse["name"],
      phone_number: response.parse["phone"],
      rating: response.parse["rating"],
      user: USER,
      price_category: response.parse["price"],
      cuisine: response.parse["categories"][0]["title"],
      location: response.parse["location"]["address1"],
      zip_code: response.parse["zip_code"],
      photo: response.parse["image_url"]
      )
    if response.parse["hours"]
      days = %w(monday tuesday wednesday thursday friday saturday sunday)
      response.parse["hours"].first['open'].each do |hour|
        day = days[hour['day']]
        BusinessHour.create!(closed_time: hour['end'], open_time: hour['start'], restaurant: r, day: day)
      end
    end
  end
end

results = search_restaurants_details(search('', 'berlin'))
# p results

# Review.create!(
#   restaurant_id: r.id,
#   text: business["text"]
#   )

# )

Deal.create!(name: "Brokkolicremesuppe", description: "mit gerösteten Mandeln und frischen Kräutern", food_type: "modern european" , price: 4, restaurant: Restaurant.first)
Deal.create!(name: "Vegane Karottensuppe", description: "mit Ingwer, Sojamilch und karamellisierter roter Bete", food_type: "modern european" , price: 6, restaurant: Restaurant.first)
Deal.create!(name: "Bunte Gemüsesuppe", description: "mit Wiener Würstchen, Croûtons und Petersilie", food_type: "modern european" , price: 5, restaurant: Restaurant.first)
Deal.create!(name: "Buchweizen-Hackfleischtopf", description: "mit Paprika und Koriander", food_type: "modern european" , price: 3, restaurant: Restaurant.first)
Deal.create!(name: "Thailändische grüne Currysuppe", description: "mit geflügelstreifen, asiatischem Gemüse und Koriander", food_type: "modern european" , price: 4, restaurant: Restaurant.first)

Deal.create!(name: "Schnitzel", description: "mit Pommes Frites und Preiselbeeren", food_type: "modern european" , price: 5, restaurant: Restaurant.second)
Deal.create!(name: "Jägerschnitzel", description: "in Pilzrahmsauce und Kroketten", food_type: "modern european" , price: 5, restaurant: Restaurant.second)
Deal.create!(name: "Zigeunerschnitzel", description: "mit Pommes Frites", food_type: "modern european" , price: 5, restaurant: Restaurant.second)

Deal.create!(name: "Spaghetti Carbonara", description: "mit Speck in Käsesahnesauce", food_type: "modern european" , price: 4, restaurant: Restaurant.third)
Deal.create!(name: "Spaghetti Bolognese", description: "mit Fleischbällchen und Tomatensauce", food_type: "modern european" , price: 4, restaurant: Restaurant.third)
Deal.create!(name: "Pizza Hawaii", description: "mit Schinken und Ananas", food_type: "modern european" , price: 4, restaurant: Restaurant.third)
Deal.create!(name: "Pizza Frutti de Mare", description: "mit Scampis und Meeresfrüchten", food_type: "modern european" , price: 4, restaurant: Restaurant.third)
Deal.create!(name: "Pizza Mageritha", description: "mit Käse und Tomatensauce", food_type: "modern european" , price: 4, restaurant: Restaurant.third)
