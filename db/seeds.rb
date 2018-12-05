require 'http'
BusinessHour.destroy_all
Deal.destroy_all
Restaurant.destroy_all
User.destroy_all
USER = User.create!(email: "tim.raue@web.de", password: "123123", first_name: "Tim", last_name: "Raue")

r1 = Restaurant.create!(rating: 4, name: "Russtrôt Café-Bistro", location: "Zimmerstraße 56, 10117 Berlin", cuisine: "russisch", user: USER, photos: ["https://s3-media1.fl.yelpcdn.com/bphoto/DzHBR_A60NkuLzI0R6cYew/o.jpg", "https://s3-media3.fl.yelpcdn.com/bphoto/Sq9aILOTNHFL3mNsdV-gkg/o.jpg", "https://s3-media4.fl.yelpcdn.com/bphoto/iAbhtIbeEoFFN19rr8Zbiw/o.jpg"])
sleep(5)
r2 = Restaurant.create!(rating: 5, name: "Bäckerei Steinecke", location: "Charlottenstraße 16-17, 10117 Berlin", cuisine: "bakery", user: USER, photos: ["https://s3-media2.fl.yelpcdn.com/bphoto/ZEd5drx2fvTQHYKJNpl9WA/o.jpg", "https://s3-media3.fl.yelpcdn.com/bphoto/Jww432ydtRi8JkkDxZjKPg/o.jpg", "https://s3-media3.fl.yelpcdn.com/bphoto/jzrF6DurY2OjoxWmJa9RVg/o.jpg"])
sleep(5)
r3 = Restaurant.create!(rating: 3.5, name: "Super iBerico", location: "Zimmerstraße 56, 10117 Berlin", cuisine: "spanish", user: USER, photos: ["https://s3-media2.fl.yelpcdn.com/bphoto/fUYDQyRA8WUU3PWF1qcdxg/o.jpg", "https://s3-media1.fl.yelpcdn.com/bphoto/QjW7qy2nagBsmIcebzAlMA/o.jpg", "https://s3-media1.fl.yelpcdn.com/bphoto/vaAKqczIL9ol_B9m3QJxcw/o.jpg"])
sleep(5)
r4 = Restaurant.create!(rating: 4.5, name: "Ishin", location: "Charlottenstraße 16, 10117 Berlin", cuisine: "japanese", user: USER, photos: ["https://s3-media2.fl.yelpcdn.com/bphoto/Zj7S8Z0y969-21BU4uZJvg/o.jpg", "https://s3-media2.fl.yelpcdn.com/bphoto/QeNa_KMQPMlOJ7H_Soy9bw/o.jpg", "https://s3-media3.fl.yelpcdn.com/bphoto/CsAse2i7vafHIKwfZXSl8w/o.jpg"])
sleep(5)
r5 = Restaurant.create!(rating: 3.5, name: "Soupkultur", location: "Adresse: Markgrafenstraße 22, 10117 Berlin", cuisine: "suppe", user: USER, photos: ["https://s3-media1.fl.yelpcdn.com/bphoto/o2bPhG2O3jwkkDAxGSQ72w/o.jpg", "https://s3-media1.fl.yelpcdn.com/bphoto/Ssjytt2u2tdzuYa9_W0XNQ/o.jpg", "https://s3-media1.fl.yelpcdn.com/bphoto/4h7MzltoSM5QbeKIvO-SuA/o.jpg"])
sleep(5)

Deal.create!(name: "Schnitzel", description: "mit Pommes Frites und Preiselbeeren", food_type: "modern european" , price: 6.50, restaurant: Restaurant.last)
Deal.create!(name: "Jägerschnitzel", description: "in Pilzrahmsauce und Kroketten", food_type: "modern european" , price: 6.50, restaurant: Restaurant.last)
Deal.create!(name: "Zigeunerschnitzel", description: "mit Pommes Frites", food_type: "modern european" , price: 6.50, restaurant: Restaurant.last)
Deal.create!(name: "Spaghetti Carbonara", description: "mit Speck in Käsesahnesauce", food_type: "modern european" , price: 4.00, restaurant: Restaurant.third)
Deal.create!(name: "Spaghetti Bolognese", description: "mit Fleischbällchen und Tomatensauce", food_type: "modern european" , price: 4.50, restaurant: Restaurant.third)
Deal.create!(name: "Pizza Hawaii", description: "mit Schinken und Ananas", food_type: "modern european" , price: 4.00, restaurant: Restaurant.third)
Deal.create!(name: "Pizza Frutti de Mare", description: "mit Scampis und Meeresfrüchten", food_type: "modern european" , price: 4.00, restaurant: Restaurant.third)
Deal.create!(name: "Pizza Mageritha", description: "mit Käse und Tomatensauce", food_type: "modern european", price: 4.00, restaurant: Restaurant.third)

Deal.create!(name: "Businesslunch", description: "Daily changing Lunch Deals", food_type: "russian", price: 3.90, restaurant: r1)

Deal.create!(name: "Kartoffelsuppe", description: "mit Bockwurstscheiben", food_type: "german", price: 3.30, restaurant: r2)
Deal.create!(name: "Rührei-Frühstück", description: "mit knusprigem Ofenfrischen, Salatbeilage und Butter", food_type: "german", price: 3.95, restaurant: r2)

Deal.create!(name: "Rührei-Frühstück", description: "mit knusprigem Ofenfrischen, Salatbeilage, Butter, Käse, Schinken, Tomaten, Zwiebeln und Schnittlauch", food_type: "german", price: 3.95 , restaurant: r2)
Deal.create!(name: "Gazpacho", description: "Spanische kalte Gemüsesuppe, dazu Picos oder Brot", food_type: "spanish", price: 3.90, restaurant: r3)
Deal.create!(name: "Boquerones en Aceite", description: "Sardellen in Oliven-Öl dazu Picos oder Brot", food_type: "spanish", price: 5.50, restaurant: r3)
Deal.create!(name: "Tapas-Teller", description: "Gemischter spanischer Tapas-Teller mit Serrano, Paprikawurst, Salami dazu Oliven, Picos oder Brot", food_type: "spanish", price: 5.50, restaurant: r3)
Deal.create!(name: "Iberischer Tapas-Teller", description: "mit diversen Käse-Sorten, Marmelade, Obst, Picos oder Brot", food_type: "spanish", price: 8.50, restaurant: r3)
Deal.create!(name: "Bolo de Arroz", description: "Reis-Muffin, zahl 2 und nimm 3", food_type: "spanish", price: 2.60, restaurant: r3)
Deal.create!(name: "Kaffeezeit", description: "Cappucino und ein Stück Torte", food_type: "spanish", price: 3.00, restaurant:r3)

Deal.create!(name: "Sushi-Menue-Happy-Hour", description: "All kinds of Sushi", food_type: "japanese", price: 4.50, restaurant: r4)

Deal.create!(name: "Brokkolicremesuppe", description: "mit gerösteten Mandeln und frischen Kräutern", food_type: "modern european" , price: 3.50, restaurant: r5)
Deal.create!(name: "Vegane Karottensuppe", description: "mit Ingwer, Sojamilch und karamellisierter roter Bete", food_type: "modern european" , price: 3.50, restaurant: r5)
Deal.create!(name: "Bunte Gemüsesuppe", description: "mit Wiener Würstchen, Croûtons und Petersilie", food_type: "modern european" , price: 4.50, restaurant: r5)
Deal.create!(name: "Buchweizen-Hackfleischtopf", description: "mit Paprika und Koriander", food_type: "modern european" , price: 4.00, restaurant: r5)
Deal.create!(name: "Thailändische grüne Currysuppe", description: "mit geflügelstreifen, asiatischem Gemüse und Koriander", food_type: "modern european" , price: 4, restaurant: r5)

# Deal.create!(name: "", description: "", food_type: "", price: , restaurant:)
# Deal.create!(name: "", description: "", food_type: "", price: , restaurant:)
# Deal.create!(name: "", description: "", food_type: "", price: , restaurant:)

API_KEY = ENV["YELP_API"]

# Constants, do not change these
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"
BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path

REVIEWS = "/reviews"

DEFAULT_BUSINESS_ID = "yelp-san-francisco"
DEFAULT_TERM = "dinner"
DEFAULT_LOCATION = "San Francisco, CA"
SEARCH_LIMIT = 15


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

    price_category = response.parse["price"].length if response.parse["price"]
    r = Restaurant.create!(
      name: response.parse["name"],
      phone_number: response.parse["phone"],
      rating: response.parse["rating"],
      user: USER,
      cuisine: response.parse["categories"][0]["title"],
      location: response.parse["location"]["address1"],
      zip_code: response.parse["location"]["zip_code"],
      photo: response.parse["image_url"],
      photos: response.parse["photos"],
      price_category: price_category,
      )
    p "Created restaurant #{r.name}"
    if response.parse["hours"] && r
      days = %w(monday tuesday wednesday thursday friday saturday sunday)
      response.parse["hours"].first['open'].each do |hour|
        day = days[hour['day']]
        BusinessHour.create!(closed_time: hour['end'], open_time: hour['start'], restaurant: r, day: day)
      end
    end

    url = "#{API_HOST}#{BUSINESS_PATH}#{id}#{REVIEWS}"
    response = HTTP.auth("Bearer #{API_KEY}").get(url)
    if response.parse["reviews"]
      response.parse["reviews"].each do |review|
        rv = Review.create!(
         restaurant_id: r.id,
         rating: review["rating"].to_i,
         text: review["text"],
         time_created: review["time_created"],
         name: review["user"]["name"]
         )
        puts "created review #{rv}"
      end
    end
    sleep(5)
  end
end



id_array = search('restaurant', 'Berlin')
results = search_restaurants_details(search('restaurant', 'Berlin'))
