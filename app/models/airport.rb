class Airport < ApplicationRecord

  def routes
    Route.where("arival_airport_id = ? OR departure_airport_id = ?", self.id, self.id)
  end
  
end
