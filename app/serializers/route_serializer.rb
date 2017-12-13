class RouteSerializer < ActiveModel::Serializer
  has_many :flights
  attributes :id, :arival_airport, :departure_airport, :base_price

end
