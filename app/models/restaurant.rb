class Restaurant < ApplicationRecord
  belongs_to :user

  mount_uploader :photo, PhotoUploader
  has_many :reviews, dependent: :destroy
end
