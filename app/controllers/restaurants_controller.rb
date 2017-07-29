class RestaurantsController < ApplicationController
  RESTAURANTS = [
    { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    { name: "Sushi Samba", address: "UK, London", category: "japanese" }
  ]

  def index
    if params[:food_type]
      @category = params[:food_type]
      @restaurants = RESTAURANTS.select { |r| r[:category] == @category }
    else
      @restaurants = RESTAURANTS
    end
  end

  def create
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}'"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
