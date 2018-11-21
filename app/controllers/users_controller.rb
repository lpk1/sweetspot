class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def listings
    @listings = Spot.where(user_id: current_user.id)
    authorize @listings
  end

  def bookings
    @bookings = SpotBooking.where(user_id: current_user.id)
    authorize @bookings
  end
end
