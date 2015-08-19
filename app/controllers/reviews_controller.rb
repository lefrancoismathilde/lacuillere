class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create ]

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    @review.save
  end

  private

  def find_restaurant
    @review = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
