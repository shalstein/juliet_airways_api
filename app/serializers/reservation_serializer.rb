class ReservationSerializer < ActiveModel::Serializer

  belongs_to :passenger
  belongs_to :flight
  belongs_to :route

  attributes :id, :payment_info, :confirmation_number


  def payment_info
    instance_options[:payment_info]
  end

  def departure_date
    Reservation.format_date(object.departure_date)
  end

end
