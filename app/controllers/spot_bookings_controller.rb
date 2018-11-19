class SpotBookingsController < ApplicationController
  def new
    @spot_booking = SpotReview.new
  end

  def create
    @spot_booking = SpotReview.create(spot_review_params)
    redirect_to spot_path(@spot_booking.spot) # will this work? find out next week on ...
  private

  def spot_review_params
    params.require(:spot_booking).permit(:booking_date, :is_approved)
  end

end
