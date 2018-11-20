class Spot < ApplicationRecord
  has_many :spot_reviews
  has_many :spot_bookings
  belongs_to :user
end
