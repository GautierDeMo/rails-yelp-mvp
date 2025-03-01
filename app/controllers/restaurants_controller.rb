class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(permitted_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def permitted_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
