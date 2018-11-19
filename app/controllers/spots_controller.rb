class SpotsController < ApplicationController

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.create(spot_params)
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
  end

  private

    def spot_params
      params.require(:spot).permit(:name, :latitude, :longitude, :photos, :description)
    end
end
