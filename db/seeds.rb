require 'http'
API_KEY = ENV["YELP_API"]

# Constants, do not change these
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"
BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path


DEFAULT_BUSINESS_ID = "yelp-san-francisco"
DEFAULT_TERM = "dinner"
DEFAULT_LOCATION = "San Francisco, CA"
SEARCH_LIMIT = 10


def search(term, location)
  url = "#{API_HOST}#{SEARCH_PATH}"
  params = {
    term: term,
    location: location,
    limit: SEARCH_LIMIT
  }

  response = HTTP.auth("Bearer #{API_KEY}").get(url, params: params)
  response.parse
end
#
results = search('asian', 'berlin')

results['businesses'].each do |business|
  puts business["name"]
  puts business["phone"]
  puts business["rating"]
  puts business["is_closed"]
  puts business["review_count"]
  puts business["categories"]
  puts business["price"]
  puts business["location"]["address1"]
  puts business["location"]["zip_code"]
  puts business["image_url"]
end
