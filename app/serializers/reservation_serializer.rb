class ReservationSerializer < ActiveModel::Serializer

  belongs_to :passenger
  
  attributes :id, :payment_info


  def payment_info
    instance_options[:payment_info]
  end

  def departure_date
    Reservation.format_date(object.departure_date)
  end

  belongs_to :flight
end
