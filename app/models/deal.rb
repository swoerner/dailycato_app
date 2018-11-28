class Deal < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
