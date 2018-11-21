class SpotReview < ApplicationRecord
  belongs_to :user
  belongs_to :spot

  validates :spot_rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :review_description, presence: true, length: { minimum: 10 }
end
