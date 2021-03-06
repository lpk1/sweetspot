class SpotBookingsController < ApplicationController
  def new
    @spot = Spot.find(params[:spot_id])
    @spot_booking = SpotBooking.new
    authorize @spot
  end

  def create
    @spot = Spot.find(params[:spot_id])
    @spot_booking = SpotBooking.new(spot_booking_params)
    @spot_booking.user = current_user
    @spot_booking.spot = @spot
    @spot_booking.save

    authorize @spot
    redirect_to spot_path(@spot)
  end

  def destroy
    @booking = SpotBooking.find(params[:id])
    @spot = @booking.spot

    @booking.destroy
    authorize @booking
    redirect_to spot_path(@spot)
  end

  private

  def spot_booking_params
    params.require(:spot_booking).permit(:start_date, :end_date, :is_approved)
  end

end
