class BookingsController < ApplicationController
  before_action :find_deal, only: [:new, :create]

  def index
    @bookings = Booking.all
    @deal = Deal.find(params[:deal_id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.restaurant = @restaurant
    @booking.save
    # if @booking.save
    #   flash[:notice] = "Booking was successful!"
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   render 'new'
    # end
  end

  def booking_params
    params.require(:booking).permit(:booking_type, :booking_time, :user_id, :deal_id, :restaurant_id, :quantity)
  end

  def find_deal
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
