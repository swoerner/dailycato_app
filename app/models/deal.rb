class Deal < ApplicationRecord
  belongs_to :restaurant
  has_many :restaurant
end
