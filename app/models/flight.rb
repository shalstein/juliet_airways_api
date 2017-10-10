class Flight < ApplicationRecord

  extend Format_date

  has_many :reservations


  def self.format_time(time)
    time.strftime("%I:%M %p")
  end







end
