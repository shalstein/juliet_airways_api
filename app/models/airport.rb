class Airport < ApplicationRecord

  def routes
    Route.where("arival_airport_id = ? OR departure_airport_id = ?", self.id, self.id)
  end

  has_many :arival_routes, class_name: 'Route', foreign_key: 'arival_airport_id'

  #scope :join_routes, -> (iata_code){joins('INNER JOIN routes ON routes.arival_airport_id = airports.id').where("airports.iata_code = ?",iata_code)}

  def arival_airports
    Route.where("departure_airport_id = ?", self.id).includes(:arival_airport).map do |route|
      route.arival_airport
    end
  end

end
