puts "Seeding..."


 airport1 = Airport.create(iata_code: 'JFK', city: 'New York, USA')
 airport2 = Airport.create(iata_code: 'ATL', city: 'Atlanta, GA, USA')

 route1 = Route.create(arival_airport: airport1, departure_airport: airport2, base_price: 317)
 route2 = Route.create(arival_airport: airport2, departure_airport: airport1, base_price: 317)

 flight1 = Flight.create(
   route: route1, departure_datetime: DateTime.iso8601('2017-09-06T08:10'), arival_datetime: DateTime.iso8601('2017-09-06T10:32')
 )

 flight2 = Flight.create(
   route: route1, departure_datetime: DateTime.iso8601('2017-09-06T13:10'), arival_datetime: DateTime.iso8601('2017-09-06T15:32')
 )

 passenger1 = Passenger.create(first_name: 'Syd', last_name: 'rosen', middle_name: 'arthur', frequent_flyer_number: '11112321', gender: 'male', dob: '1978-08-01', email: 'syd@example.com', telephone: '212-555-0121')

  passenger2 = Passenger.create(first_name: 'Madison', last_name: 'Goren', middle_name: 'Rachel', frequent_flyer_number: '11112321', gender: 'female', dob: '1982-07-01', email: 'rachel@example.com', telephone: '212-555-0125')

 reservation1 = Reservation.create(passenger: passenger1, flight: flight2, seat_number: '14C', travel_class: 'First Class')

 reservation1 = Reservation.create(passenger: passenger2, flight: flight1, seat_number: '14C', travel_class: 'First Class')




puts "Done"
