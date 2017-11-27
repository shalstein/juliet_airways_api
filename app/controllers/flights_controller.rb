class FlightsController < ApplicationController

  def find
    departure_date = DateTime.parse(flight_params[:departure_date])
    departure_airport = Airport.find_by(iata_code: flight_params[:departure_city])
    arival_airport = Airport.find_by(iata_code: flight_params[:arival_city])
    sort_by = flight_params[:sort_by].nil? ? 'departure_datetime' : flight_params[:sort_by]

      flights = Flight.joins(:route).where(routes: {departure_airport_id: departure_airport.id, arival_airport_id: arival_airport.id}, flights: {departure_datetime: between_beginning_to_end_of(departure_date) } )

      if flights.empty?
        render json: {error: "Their are no flights on the queried date"}
      else
        render json: flights, meta: {departure_airport: departure_airport, arival_airport: arival_airport, departure_date: Flight.format_date(departure_date)}, meta_key: 'request' 
      end

  end


  def status
    departure_date = DateTime.parse(status_params[:flight_date])
    flight = Flight.where(flight_number: status_params[:flight_number], departure_datetime: between_beginning_to_end_of(departure_date) ).take

    if flight.present?
      render json: flight, flight_status: 'ON TIME'
    else
      render json: {error: 'No Flights Found'}
    end

  end

  private

  def flight_params
    params.require(:flights).permit(:departure_city, :sort_by, :arival_city, :departure_date)
  end

  def status_params
    params.require(:flights).permit(:flight_date, :flight_number)
  end

  def between_beginning_to_end_of(date)
    date.beginning_of_day..date.end_of_day
  end



end
