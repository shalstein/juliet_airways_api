class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.integer :arival_airport_id
      t.integer :departure_airport_id
      t.integer :base_price
      t.timestamps
    end
  end
end
