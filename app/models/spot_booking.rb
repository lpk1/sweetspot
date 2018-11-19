class SpotBooking < ApplicationRecord
  belongs_to :Spot
  belongs_to :User

end
