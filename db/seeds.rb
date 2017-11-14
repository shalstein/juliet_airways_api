puts "Seeding..."





 jfk = Airport.create(iata_code: 'JFK', city: 'New York, USA')
 atl = Airport.create(iata_code: 'ATL', city: 'Atlanta, GA, USA')

 lax = Airport.create(iata_code: 'LAX', city: 'Los Angeles, CA, USA')
 ord = Airport.create(iata_code: 'ORD', city: 'Chicago, IL, USA')


 atl_jfk = Route.create(arival_airport: jfk, departure_airport: atl, base_price: 317)
 jfk_atl = Route.create(arival_airport: atl, departure_airport: jfk, base_price: 294)

 jfk_lax = Route.create(arival_airport: lax, departure_airport: jfk, base_price: 317)
 lax_jfk = Route.create(arival_airport: jfk, departure_airport: lax, base_price: 379)


last_day = Date.today + 90.days
current_day = Date.current

while current_day < last_day do


depart_time = Time.current.at_midnight + 618.minutes
departure_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, depart_time.hour, depart_time.min)

arival_time =  Time.current.at_midnight + 720.minutes
arival_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, arival_time.hour, arival_time.min,0,'000')

flight1 = Flight.create(
  route: atl_jfk, departure_datetime: departure_datetime, arival_datetime: arival_datetime
  )

depart_time = Time.current.at_midnight + 550.minutes
departure_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, depart_time.hour, depart_time.min)

arival_time =  Time.current.at_midnight + 650.minutes
arival_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, arival_time.hour, arival_time.min,0,'000')


  Flight.create(
    route: atl_jfk, departure_datetime: departure_datetime, arival_datetime: arival_datetime
    )


    depart_time = Time.current.at_midnight + 930.minutes
    departure_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, depart_time.hour, depart_time.min)

    arival_time =  Time.current.at_midnight + 1045.minutes
    arival_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, arival_time.hour, arival_time.min,0,'000')

    Flight.create(
      route: jfk_atl, departure_datetime: departure_datetime, arival_datetime: arival_datetime
      )


      depart_time = Time.current.at_midnight + 1162.minutes
      departure_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, depart_time.hour, depart_time.min)

      arival_time =  Time.current.at_midnight + 1278.minutes
      arival_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, arival_time.hour, arival_time.min,0,'000')

      flight2 = Flight.create(
        route: jfk_atl, departure_datetime: departure_datetime, arival_datetime: arival_datetime
        )


        depart_time = Time.current.at_midnight + 429.minutes
        departure_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, depart_time.hour, depart_time.min)

        arival_time =  Time.current.at_midnight + 533.minutes
        arival_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, arival_time.hour, arival_time.min,0,'000')

        Flight.create(
          route: jfk_lax, departure_datetime: departure_datetime, arival_datetime: arival_datetime
          )

          depart_time = Time.current.at_midnight + 603.minutes
          departure_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, depart_time.hour, depart_time.min)

          arival_time =  Time.current.at_midnight + 744.minutes
          arival_datetime =  DateTime.new(current_day.year,current_day.month, current_day.day, arival_time.hour, arival_time.min,0,'000')

          Flight.create(
            route: lax_jfk, departure_datetime: departure_datetime, arival_datetime: arival_datetime
            )


    current_day = current_day + 1.day
    puts 'finished ' + current_day.to_s
end


 passenger1 = Passenger.create(first_name: 'Syd', last_name: 'rosen', middle_name: 'arthur', frequent_flyer_number: '11112321', gender: 'male', dob: '1978-08-01', email: 'syd@example.com', telephone: '212-555-0121')

  passenger2 = Passenger.create(first_name: 'Madison', last_name: 'Goren', middle_name: 'Rachel', frequent_flyer_number: '11112321', gender: 'female', dob: '1982-07-01', email: 'rachel@example.com', telephone: '212-555-0125')

 reservation1 = Reservation.create(passenger: passenger1, flight: flight2, seat_number: '14C', travel_class: 'First Class')

 reservation1 = Reservation.create(passenger: passenger2, flight: flight1, seat_number: '14C', travel_class: 'First Class')




puts "Done"
