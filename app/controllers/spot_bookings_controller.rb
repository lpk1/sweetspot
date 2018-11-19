class SpotBookingsController < ApplicationController
  def new
    @spot_booking = SpotBookings.new
  end

  def create
    @spot_booking = SpotBookings.create(spot_booking_params)
    redirect_to spot_path(@spot_booking.spot) # will this work? find out next week on ...
  private

  def spot_booking_params
    params.require(:spot_booking).permit(:booking_date, :is_approved)
  end

end
