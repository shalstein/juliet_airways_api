class AirportsController < ApplicationController

  def index
    render json: Airport.all
  end

  def destinations
    airport = Airport.find(airport_params)
    destinations = airport.arival_airports
    render json: destinations
  end

  private

  def airport_params
    params.require(:id)
  end
end
