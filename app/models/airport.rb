class Airport < ApplicationRecord

  def routes
    Route.where("arival_airport_id = ? OR departure_airport_id = ?", self.id, self.id)
  end

  has_many :arival_routes, class_name: 'Route', foreign_key: 'arival_airport_id'

  has_many :departure_routes, class_name: 'Route', foreign_key: 'departure_airport_id'


  def arival_airports
    Route.where("departure_airport_id = ?", self.id).includes(:arival_airport).map do |route|
      route.arival_airport
    end
  end

end
