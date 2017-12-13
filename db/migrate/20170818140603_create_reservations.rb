class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :flight
      t.belongs_to :passenger
      t.string :seat_number
      t.string :travel_class
      t.string :confirmation_number
      t.index  :confirmation_number, unique: true
      t.timestamps
    end
  end
end
