class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create ]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:restaurant_id])
  end

  private

  def find_restaurant
    @review = Restaurant.find(params[:restaurant_id])
  end

  def review_params

  end
end
