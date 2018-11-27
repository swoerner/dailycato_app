class Tag < ApplicationRecord
  belongs_to :deal
  has_many :restaurant
end
