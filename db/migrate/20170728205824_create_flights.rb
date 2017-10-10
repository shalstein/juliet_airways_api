class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :departure_city
      t.string :arival_city
      t.datetime :departure_datetime
      t.datetime :arival_datetime
      t.integer :price
      t.integer :flight_number 
      t.timestamps
    end
  end
end
