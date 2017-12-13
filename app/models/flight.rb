class Flight < ApplicationRecord

  extend Format_date

  belongs_to :route
  has_many :reservations
  has_one :arival_airport, through: :route
  has_one :departure_airport, through: :route



  def self.format_time(time)
    time.strftime("%I:%M %p")
  end


  def format_departure_time
    departure_datetime.strftime("%I:%M %p")
  end





end
