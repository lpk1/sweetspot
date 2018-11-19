class Spot < ApplicationRecord
  has_many :Reviews
  has_many :Spotbookings
  belongs_to :User
end
