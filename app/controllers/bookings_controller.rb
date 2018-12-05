class BookingsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create, :show]
  before_action :find_booking, only: [:show]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.restaurant = @restaurant
    @booking.payment_state = 'pending'
    if @booking.save
      flash[:notice] = "Booking was successful!"
      redirect_to restaurant_booking_path(@restaurant, @booking)
    else
      render 'new'
    end
  end

  def show
  end

  def booking_params
    params.require(:booking).permit(:booking_type, :booking_time, :user_id, :deal_id, :restaurant_id)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
