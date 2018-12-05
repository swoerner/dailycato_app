class PaymentsController < ApplicationController
  #because there has to be an order before payment
  before_action :set_booking
  before_action :find_restaurant

  def new
    #display the Stripe button
  end

  def create
  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.price_cents,
    currency:     @booking.price.currency
  )

  @booking.update(payment: charge.to_json, payment_state: 'paid')
  redirect_to restaurant_booking_path(@restaurant, @booking)

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to  restaurants_path
end

private

  def set_booking
    @booking = current_user.bookings.where(payment_state: 'pending').find(params[:booking_id])
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


end
