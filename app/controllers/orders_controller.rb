class OrdersController < ApplicationController
#you can only book if you are logged in
skip_before_action :authenticate_user!

def create
  deal = Deal.find(params[:deal_id])
  order  = Order.create!(deal_sku: deal.sku, amount: deal.price, state: 'pending', user: current_user)

  redirect_to new_order_payment_path(order)
end

def show
  @order = current_user.orders.where(state: 'paid').find(params[:id])
end

end
