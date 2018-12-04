class BookingsController < ApplicationController
  before_action :find_deal, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.restaurant = @restaurant
    # booking payment_status = 'pending'
    if @booking.save
      flash[:notice] = "Booking was successful!"
      redirect_to # redirect to bookings show (order summary)
    else
      render 'new'
    end
  end

  def show # also create html page! serves as a booking confirmation
    # change schema, add payment_state to booking (remove order table)
    # booking summary in view

  end

  def booking_params
    params.require(:booking).permit(:booking_type, :booking_time, :user_id, :deal_id, :restaurant_id)
  end

  def find_deal
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
