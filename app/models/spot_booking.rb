class SpotBooking < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
end
