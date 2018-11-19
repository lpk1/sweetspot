class SpotReview < ApplicationRecord
  belongs_to :User
  belongs_to :Spot
end
