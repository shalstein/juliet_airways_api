class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.datetime :departure_datetime
      t.datetime :arival_datetime
      t.integer :route_id
      t.timestamps
    end
  end
end
