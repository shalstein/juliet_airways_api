class AddMinutesAfterMidnight < ActiveRecord::Migration[5.0]
  def change
    add_column :routes, :departure_minutes_past_midnight, :integer
    add_column :routes, :arival_minutes_past_midnight, :integer
  end
end
