class Airport < ApplicationRecord

  
  def routes
    Route.where("arival_airport_id = ? OR departure_airport_id = ?", self.id, self.id)
  end


  def arival_airports
    Route.where("departure_airport_id = ?", self.id).includes(:arival_airport).map do |route|
      route.arival_airport
    end
  end

end
