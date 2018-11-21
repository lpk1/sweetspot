class Spot < ApplicationRecord
  has_many :spot_reviews
  has_many :spot_bookings
  belongs_to :user

  validates :name, presence: true, length: { minimum: 6 }
  validates :address, presence: true, length: { minimum: 6 }
  validates :latitude, length: { minimum: 4 }
  validates :longitude, length: { minimum: 4 }
  validates :description, presence: true
end
