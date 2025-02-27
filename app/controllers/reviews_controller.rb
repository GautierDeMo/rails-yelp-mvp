class ReviewsController < ApplicationController

  def new
    set_restaurant
    @review = Review.new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
