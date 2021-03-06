class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @restaurant = Restaurant.all
    @restaurant = @restaurant.where(cuisine: params[:cuisine_types]) if params[:cuisine_types].present?
    @restaurant = @restaurant.where("price_category <= ?", params[:price_category]) if params[:price_category].present?
    @restaurant = @restaurant.where("rating >= ?", params[:rating]) if params[:rating].present?
    @restaurants_geo = @restaurant.near(params[:location], 3) if params[:location].present?
    @restaurants_geo = @restaurant.near(params[:location_form], 3) if params[:location_form].present?
    @restaurants_geo = @restaurant if @restaurants_geo.nil?
    @markers = @restaurants_geo.map do |restaurant|
      {
        lng: restaurant.longitude,
        lat: restaurant.latitude,
        infoWindow: { content: render_to_string(partial: "/restaurants/map_window", locals: { restaurant: restaurant }) },
        id: restaurant.id
      }
    end
  end

  def show
    @restaurant = Restaurant.where(id: params[:id])
    @deals = Deal.where(restaurant_id: params[:id])
    @markers = @restaurant.map do |restaurant|
      {
        lng: restaurant.longitude,
        lat: restaurant.latitude,
        infoWindow: { content: render_to_string(partial: "/restaurants/map_window", locals: { restaurant: restaurant }) },
        id: ''
      }
    end
    @restaurant = Restaurant.find(params[:id])
    @restaurant_opening_hours = BusinessHour.where(restaurant_id: @restaurant.id)
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
