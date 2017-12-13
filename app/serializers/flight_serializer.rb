class FlightSerializer < ActiveModel::Serializer
  belongs_to :route
  attributes :id, :departure_time, :departure_date, :arival_time, :total_fly_time

  def departure_time
    Flight.format_time(object.departure_datetime)
  end

  def departure_date
    Flight.format_date(object.departure_datetime)
  end

  def arival_time
    Flight.format_time(object.arival_datetime)
  end

  def total_fly_time
    Time.at(object.arival_datetime - object.departure_datetime).utc.strftime "%Hh %Mm"
  end




end
