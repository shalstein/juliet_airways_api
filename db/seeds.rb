puts "Seeding..."

 flights_atl_jfk = [
   { departure_date_time: DateTime.iso8601('2017-09-06T08:10'), arival_date_time: DateTime.iso8601('2017-09-06T10:32'), flight_number: 1},
   { departure_date_time: DateTime.iso8601('2017-09-06T10:30'), arival_date_time: DateTime.iso8601('2017-09-06T12:51'), flight_number: 2},
   { departure_date_time: DateTime.iso8601('2017-09-06T13:40'), arival_date_time: DateTime.iso8601('2017-09-06T16:04'), flight_number: 3},
   { departure_date_time: DateTime.iso8601('2017-09-06T15:20'), arival_date_time: DateTime.iso8601('2017-09-06T17:47'), flight_number: 4},
   { departure_date_time: DateTime.iso8601('2017-09-06T17:20'), arival_date_time: DateTime.iso8601('2017-09-06T19:50'), flight_number: 5},
   { departure_date_time: DateTime.iso8601('2017-09-06T21:45'), arival_date_time: DateTime.iso8601('2017-09-06T00:09'), flight_number: 6}
 ]

  start_date = flights_atl_jfk[0][:departure_date_time]
  last_date = start_date + 180.day
  count = 0

   while start_date + count.days < last_date do

    flights_atl_jfk.each do |flight|
      departure_date_time = flight[:departure_date_time] + count.days

      if !departure_date_time.saturday? && !departure_date_time.sunday?
        Flight.create(departure_city: "ATL", arival_city: "JFK", departure_datetime: departure_date_time , arival_datetime: flight[:arival_date_time] + count.days, price: 200 + rand(1..250), flight_number: flight[:flight_number] )
      end

   end
   count += 1
   puts count


 end


 flights_jfk_atl = [
   { departure_date_time: DateTime.iso8601('2017-09-06T08:10'), arival_date_time: DateTime.iso8601('2017-09-06T10:32'), flight_number: 7},
   { departure_date_time: DateTime.iso8601('2017-09-06T10:30'), arival_date_time: DateTime.iso8601('2017-09-06T12:51'), flight_number: 8},
   { departure_date_time: DateTime.iso8601('2017-09-06T13:40'), arival_date_time: DateTime.iso8601('2017-09-06T16:04'), flight_number: 9},
   { departure_date_time: DateTime.iso8601('2017-09-06T15:20'), arival_date_time: DateTime.iso8601('2017-09-06T17:47'), flight_number: 10},
   { departure_date_time: DateTime.iso8601('2017-09-06T17:20'), arival_date_time: DateTime.iso8601('2017-09-06T19:50') , flight_number: 11},
   { departure_date_time: DateTime.iso8601('2017-09-06T21:45'), arival_date_time: DateTime.iso8601('2017-09-06T00:09'), flight_number: 12}
 ]

  start_date = flights_jfk_atl[0][:departure_date_time]
  last_date = start_date + 180.day
  count = 0

   while start_date + count.days < last_date do

    flights_jfk_atl.each do |flight|
      departure_date_time = flight[:departure_date_time] + count.days

      if !departure_date_time.saturday? && !departure_date_time.sunday?
        Flight.create(departure_city: "JFK", arival_city: "ATL", departure_datetime: departure_date_time , arival_datetime: flight[:arival_date_time] + count.days, price: 200 + rand(1..250), flight_number: flight[:flight_number] )
      end
   end
   count += 1
   puts count

 end


 flights_jfk_ord = [
   { departure_date_time: DateTime.iso8601('2017-09-06T08:10'), arival_date_time: DateTime.iso8601('2017-09-06T10:32'), flight_number: 13},
   { departure_date_time: DateTime.iso8601('2017-09-06T10:30'), arival_date_time: DateTime.iso8601('2017-09-06T12:51'), flight_number: 14},
   { departure_date_time: DateTime.iso8601('2017-09-06T13:40'), arival_date_time: DateTime.iso8601('2017-09-06T16:04'), flight_number: 15},
 ]

  start_date = flights_jfk_ord[0][:departure_date_time]
  last_date = start_date + 180.day
  count = 0

   while start_date + count.days < last_date do

    flights_jfk_ord.each do |flight|
      departure_date_time = flight[:departure_date_time] + count.days

      if !departure_date_time.saturday? && !departure_date_time.sunday?
        Flight.create(departure_city: "JFK", arival_city: "ORD", departure_datetime: departure_date_time , arival_datetime: flight[:arival_date_time] + count.days, price: 200 + rand(1..250), flight_number: flight[:flight_number] )
      end
   end
   count += 1
   puts count

 end

 flights_ord_jfk = [
   { departure_date_time: DateTime.iso8601('2017-09-06T15:20'), arival_date_time: DateTime.iso8601('2017-09-06T17:47'), flight_number: 16},
   { departure_date_time: DateTime.iso8601('2017-09-06T17:20'), arival_date_time: DateTime.iso8601('2017-09-06T19:50'), flight_number: 17},
   { departure_date_time: DateTime.iso8601('2017-09-06T21:45'), arival_date_time: DateTime.iso8601('2017-09-06T00:09'), flight_number: 18}
 ]

  start_date = flights_ord_jfk[0][:departure_date_time]
  last_date = start_date + 180.day
  count = 0

   while start_date + count.days < last_date do

    flights_ord_jfk.each do |flight|
      departure_date_time = flight[:departure_date_time] + count.days

      if !departure_date_time.saturday? && !departure_date_time.sunday?
        Flight.create(departure_city: "ORD", arival_city: "JFK", departure_datetime: departure_date_time , arival_datetime: flight[:arival_date_time] + count.days, price: 200 + rand(1..250), flight_number: flight[:flight_number] )
      end
   end
   count += 1
   puts count

 end




 flights_jfk_mia = [
   { departure_date_time: DateTime.iso8601('2017-09-06T11:20'), arival_date_time: DateTime.iso8601('2017-09-06T14:36'), flight_number: 19},
   { departure_date_time: DateTime.iso8601('2017-09-06T15:35'), arival_date_time: DateTime.iso8601('2017-09-06T19:10'), flight_number: 20},
   { departure_date_time: DateTime.iso8601('2017-09-06T19:25'), arival_date_time: DateTime.iso8601('2017-09-06T22:57'), flight_number: 21}
 ]

  start_date = flights_jfk_mia[0][:departure_date_time]
  last_date = start_date + 180.day
  count = 0

   while start_date + count.days < last_date do

    flights_jfk_mia.each do |flight|
      departure_date_time = flight[:departure_date_time] + count.days

      if !departure_date_time.saturday? && !departure_date_time.sunday?
        Flight.create(departure_city: "JFK", arival_city: "MIA", departure_datetime: departure_date_time , arival_datetime: flight[:arival_date_time] + count.days, price: 200 + rand(1..250), flight_number: flight[:flight_number] )
      end
   end
   count += 1
   puts count

 end


 flights_mia_jfk = [
   { departure_date_time: DateTime.iso8601('2017-09-06T11:20'), arival_date_time: DateTime.iso8601('2017-09-06T14:36'), flight_number: 22},
   { departure_date_time: DateTime.iso8601('2017-09-06T15:35'), arival_date_time: DateTime.iso8601('2017-09-06T19:10'), flight_number: 23},
   { departure_date_time: DateTime.iso8601('2017-09-06T19:25'), arival_date_time: DateTime.iso8601('2017-09-06T22:57'), flight_number: 24}
 ]

  start_date = flights_mia_jfk[0][:departure_date_time]
  last_date = start_date + 180.day
  count = 0

   while start_date + count.days < last_date do

    flights_mia_jfk.each do |flight|
      departure_date_time = flight[:departure_date_time] + count.days

      if !departure_date_time.saturday? && !departure_date_time.sunday?
        Flight.create(departure_city: "MIA", arival_city: "JFK", departure_datetime: departure_date_time , arival_datetime: flight[:arival_date_time] + count.days, price: 200 + rand(1..250), flight_number: flight[:flight_number] )
      end
   end
   count += 1
   puts count

 end







puts "Done"
