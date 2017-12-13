class Route < ApplicationRecord
  belongs_to :arival_airport, class_name: 'Airport'
  belongs_to :departure_airport, class_name: 'Airport'

  has_many :flights

  #scope :join_airports, -> (iata_code){joins('INNER JOIN airports ON routes.departure_airport_id = airports.id').where("airports.iata_code = ?",iata_code)}

  def self.airports
    Route.includes(:arival_airport, :departure_airport)
  end

end
