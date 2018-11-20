class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :spot_bookings
  has_many :spot_reviews
  has_many :spots

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
