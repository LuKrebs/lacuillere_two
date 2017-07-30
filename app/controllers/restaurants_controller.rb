class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    # if params[:food_type]
    #   @category = params[:food_type]
    #   @restaurants = Restaurant.select { |r| r[:category] == @category }
    # else
    #   @restaurants = RESTAURANTS
    # end
    @restaurants = Restaurant.all
  end

  def new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  def show
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
