class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @spots = policy_scope(Spot).all

    @map_spots = Spot.where.not(latitude: nil, longitude: nil)

    @markers = @map_spots.map do |spot|
      {
        lng: spot.longitude,
        lat: spot.latitude,
        infoWindow: { content: render_to_string(partial: "/spots/map_window", locals: { spot: spot }) }

      }
    end
  end

  def show
    @spot = Spot.find(params[:id])

    if user_signed_in? && current_user != @spot.user
      @your_bookings = SpotBooking.where(user_id: current_user.id, spot_id: params[:id])
    elsif user_signed_in? && current_user == @spot.user
      @your_bookings = SpotBooking.where(spot_id: params[:id])
    else
      @your_bookings = []
    end

    @reviews = SpotReview.where(spot_id: @spot)
    @review = SpotReview.new
    authorize @spot
  end

  def new
    @spot = Spot.new
    authorize @spot
  end

  def create
    spot = Spot.new(spot_params)
    authorize spot
    spot.user = current_user
    spot.save
    redirect_to spots_path
  end

  def edit
    @spot = Spot.find(params[:id])
    authorize @spot
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update(spot_params)
    authorize @spot
    redirect_to spot_path(@spot)
  end

  def destroy
    @spot = Spot.find(params[:id])

    @spot.destroy
    authorize @spot
    redirect_to spots_path
  end

  private

    def spot_params
      params.require(:spot).permit(:name, :address, :latitude, :longitude, :description, :photo, :photo_cache)
    end
end
