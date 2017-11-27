class FlightsController < ApplicationController

  def find
    requested_departure_day = DateTime.parse(flight_params[:departure_date])
    departure_airport_id = Airport.find_by(iata_code: flight_params[:departure_city]).id
    arival_airport_id = Airport.find_by(iata_code: flight_params[:arival_city]).id
    sort_by = flight_params[:sort_by].nil? ? 'departure_datetime' : flight_params[:sort_by]

      flights = Flight.joins(:route).where(routes: {departure_airport_id: departure_airport_id, arival_airport_id: arival_airport_id}, flights: {departure_datetime: between_beginning_to_end_of(requested_departure_day) } )

      if flights.empty?
        render json: {error: "Their are no flights on the queried date"}
      else
        render json: flights
      end

  end


  def status
    requested_departure_day = DateTime.parse(status_params[:flight_date])
    flight = Flight.where(flight_number: status_params[:flight_number], departure_datetime: between_beginning_to_end_of(requested_departure_day) ).take

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
