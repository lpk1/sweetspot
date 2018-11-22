class Spot < ApplicationRecord
  has_many :spot_reviews, :dependent => :destroy
  has_many :spot_bookings, :dependent => :destroy
  belongs_to :user

  validates :name, presence: true, length: { minimum: 6 }
  validates :address, presence: true, length: { minimum: 6 }
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
