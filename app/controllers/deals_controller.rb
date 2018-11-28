class DealsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @deals = Deal.all
  end

  def show
    @deal = Deal.find(params[:id])
    @deals = Deal.all
  end
end
