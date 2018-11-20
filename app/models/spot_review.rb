class SpotReview < ApplicationRecord
  belongs_to :user
  belongs_to :spot
end
