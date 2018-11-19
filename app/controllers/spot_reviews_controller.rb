class SpotReviewsController < ApplicationController
  def new
    @spot_review = SpotReview.new
  end

  def create
    @spot_review = SpotReview.create(spot_review_params)
    redirect_to spot_path(@spot_review.spot) # will this work? find out next week on ...
  private

  def spot_review_params
    params.require(:spot_review).permit(:spot_rating, :review_description)
  end
end
