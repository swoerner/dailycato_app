class Deal < ApplicationRecord
  belongs_to :restaurant
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true

  def label
    self.name + " - " + self.price.to_s + "€"
  end
end
