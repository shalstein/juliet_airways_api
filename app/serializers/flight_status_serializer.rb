class FlightStatusSerializer < ActiveModel::Serializer
  attributes :departure_time, :arival_time, :price, :flight_number, :total_fly_time, :status, :arival_city, :departure_city

  def departure_time
    Flight.format_time(object.departure_time)
  end

  def arival_time
    Flight.format_time(object.arival_time)
  end

  def total_fly_time
    Time.at(object.arival_time - object.departure_time).utc.strftime "%Hh %Mm"
  end

  def status
    instance_options[:flight_status]
  end

end
