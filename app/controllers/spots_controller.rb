class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @spots = policy_scope(Spot).all
  end

  def show
    @spot = Spot.find(params[:id])
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
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update(spot_params)
    redirect_to spots_path
  end

  def destroy
    @spot = Spot.find(params[:id])

    @spot.destroy
    authorize @spot
  end

  private

    def spot_params
      params.require(:spot).permit(:name, :latitude, :longitude, :description)
    end
end
