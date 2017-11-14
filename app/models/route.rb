class Route < ApplicationRecord
  belongs_to :arival_airport, class_name: 'Airport'
  belongs_to :departure_airport, class_name: 'Airport'

  has_many :flights

  def self.airports
    Route.includes(:arival_airport, :departure_airport)
  end

end
