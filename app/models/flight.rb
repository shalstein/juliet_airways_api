class Flight < ApplicationRecord

  extend Format_date

  belongs_to :route
  has_many :reservations


  def self.format_time(time)
    time.strftime("%I:%M %p")
  end


  def format_departure_time
    departure_datetime.strftime("%I:%M %p")
  end





end
