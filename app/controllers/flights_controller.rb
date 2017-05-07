class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def import
    Flight.import(params[:file])
    redirect_to root_url, notice: "Flight Data imported!"
  end
end
