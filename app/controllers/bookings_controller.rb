class BookingsController < ApplicationController
  before_action :find_deal, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.restaurant = @restaurant
    @booking.save
  end

  def booking_params
    params.require(:booking).permit(:booking_type, :booking_time, :user_id, :deal_id, :restaurant_id)
  end

  def find_deal
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
