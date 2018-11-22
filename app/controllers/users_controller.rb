class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def listings
    @listings = Spot.where(user_id: current_user.id)
    authorize @listings

    @map_spots = Spot.where(user_id: current_user.id)
    @markers = @map_spots.map do |spot|
      {
        lng: spot.longitude,
        lat: spot.latitude,
        infoWindow: { content: render_to_string(partial: "/spots/map_window", locals: { spot: spot }) }

      }
    end
  end

  def bookings
    @bookings = SpotBooking.where(user_id: current_user.id)
    authorize @bookings

    # @map_spots = Spot.where(user_id: current_user.id)
    @map_spots = @bookings.map  {|booking| booking.spot }
    @markers = @map_spots.map do |spot|
      {
        lng: spot.longitude,
        lat: spot.latitude,
        infoWindow: { content: render_to_string(partial: "/spots/map_window", locals: { spot: spot }) }

      }
    end
  end
end
