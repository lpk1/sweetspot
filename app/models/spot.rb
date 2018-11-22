class Spot < ApplicationRecord
  has_many :spot_reviews
  has_many :spot_bookings
  belongs_to :user

  validates :name, presence: true, length: { minimum: 6 }
  validates :address, presence: true, length: { minimum: 6 }
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
