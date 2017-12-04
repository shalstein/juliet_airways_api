class ReservationsController < ApplicationController

  def create
    dob = "#{passenger_dob_params[:year]}-#{passenger_dob_params[:month]}-#{passenger_dob_params[:day]}"
    passenger = Passenger.new(passenger_params)
    passenger.dob = dob
    passenger.save!

    reservation = passenger.reservations.create(reservations_params)

     if passenger.errors.any?
       render json: {reservation: reservation.errors}
     else
       render json: reservation, payment_info: reservation_payment_params
     end
  end


  def find
    reservation = Reservation.joins(:passenger).where(confirmation_number: find_params[:confirmation_number], passengers: {first_name: find_params[:first_name], last_name: find_params[:last_name]} ).take


      if reservation
        render json: reservation
      else
        render json: {error: 'No Reservations Found'}
      end
  end

  private
    def passenger_params
       passenger ||= params.require(:reservation).permit(:first_name, :last_name, :middle_name, :frequent_flyer_number, :gender, :telephone)
    end

    def passenger_dob_params
       dob ||= params.require(:reservation).permit(:day, :month, :year)
     end

    def reservations_params
       reservation ||= params.require(:reservation).permit(:flight_id)
    end

    def reservation_payment_params
      payment_info ||= params.require(:reservation).require(:payment_info).permit(:card_number)
    end

    def parse_params_date
      DateTime.parse("#{reservations_params[:travelers_details][:year]}-#{reservations_params[:travelers_details][:month]}-#{reservations_params[:travelers_details][:day]}")
    end

    def find_params
      find ||= params.require(:reservation).permit(:confirmation_number, :first_name, :last_name)
    end


end
