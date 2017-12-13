class FlightsController < ApplicationController

  def find
    departure_date = DateTime.parse(flight_params[:departure_date])
    departure_airport_id = flight_params[:departure_airport]
    arival_airport_id = flight_params[:arival_airport]

    flights = Flight.joins(:route).where(routes: {departure_airport_id: departure_airport_id, arival_airport_id: arival_airport_id}, flights: {departure_datetime: between_beginning_to_end_of(departure_date) } ).order(sort_by(flight_params[:sort_by]))

    if flights.empty?
      render json: {error: "Their are no flights on the queried date"}
    else
      render json: flights, meta: {departure_airport: departure_airport_id, arival_airport: arival_airport_id, departure_date: Flight.format_date(departure_date)}, meta_key: 'request'
    end

  end


  def status
    departure_date = DateTime.parse(status_params[:flight_date])
    flight = Flight.joins(:route).where(departure_datetime: between_beginning_to_end_of(departure_date), routes: {id: status_params[:flight_number] } ).take

    if flight.present?
      render json: flight, flight_status: 'ON TIME'
    else
      render json: {error: 'No Flights Found'}
    end

  end

  private

  def flight_params
    params.require(:flights).permit(:departure_airport, :sort_by, :arival_airport, :departure_date)
  end

  def status_params
    params.require(:flights).permit(:flight_date, :flight_number)
  end

  def between_beginning_to_end_of(date)
    date.beginning_of_day..date.end_of_day
  end

  def sort_by(sort_by_params)
    if sort_by_params.nil? ||sort_by_params == 'departure_datetime'
      sort_by = 'flights.departure_datetime asc'
    elsif sort_by_params == 'price'
      sort_by = 'routes.base_price asc'
    else
      sort_by = 'flights.arival_datetime asc'
    end
    sort_by
  end

end
