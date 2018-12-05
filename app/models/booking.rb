class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :deal

  monetize :price_cents
end
