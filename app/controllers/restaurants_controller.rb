class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # @restaurants_geo = Restaurant.near(params[:location], 3)
    # @markers = @restaurants_geo.map do |restaurant|

    # {
    #   lng: restaurant.longitude,
    #   lat: restaurant.latitude,
    #   infoWindow: { content: render_to_string(partial: "/restaurants/map_window", locals: { restaurant: restaurant }) }
    # }
    # end
  end

  def show
    @restaurant = Restaurant.where(id: params[:id])
    @markers = @restaurant.map do |restaurant|
      {
        lng: restaurant.longitude,
        lat: restaurant.latitude,
        infoWindow: { content: render_to_string(partial: "/restaurants/map_window", locals: { restaurant: restaurant }) }
      }
    end
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    authorize @restaurant
    if @restaurant.save
      redirect_to restaurants_path
    else
      render new_restaurant_path
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end
  private

  def restaurant_params
    
    params.require(:restaurant).permit(:name, :location, :cuisine, :photo)
  end
end
