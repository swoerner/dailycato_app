class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :deals
  has_many :reviews, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  # validates :cuisine, inclusion: ["amerikanisch", "französisch", "asiatisch", "burger", "dessert", "deutsche küche", "fisch", "gesund", "exklusive deals", "indisch", "italienisch", "japanisch", "koreanisch", "mediterranean", "mexikanisch", "pizza", "sandwiches", "sushi", "syrisch", "thailändisch", "türkisch", "vegetarisch", "vietnamesisch", "other"]

  validates :cuisine, inclusion: ["modern european", "salad", "gastropub", "asian", "japanese", "italian", "french", "vietnamese", "eastern european", "burrito"]

  validates :name, presence: true
  validates :location, presence: true
  validates :user, presence: true
  mount_uploader :photo, PhotoUploader
end
