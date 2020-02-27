# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Driver.destroy_all
Passenger.destroy_all
Planet.destroy_all
Reservation.destroy_all
Journey.destroy_all


d1 = Driver.create(name: "Amstrong", email: "driver1@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/W8HM214.jpg")
d2 = Driver.create(name: "Frimout", email: "driver2@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/HN3Gmln.jpg")


max = Passenger.create(name: "Max", email: "max@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/JZaCLJf.jpg")
xav = Passenger.create(name: "Xav", email: "xav@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/jyFGS0K.jpg")
roger = Passenger.create(name: "Roger", email: "roger@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/7mF90bl.jpg")
gee = Passenger.create(name: "Gee", email: "gee@test.com", password: "hellohello", password_confirmation: "hellohello", photo: "https://i.imgur.com/zlB6NdR.jpg")

p1 = Planet.create(name: "Earth", photo: "https://solarsystem.nasa.gov/system/feature_items/images/17_earth.png")
p2 = Planet.create(name: "Jupiter", photo: "https://solarsystem.nasa.gov/system/feature_items/images/16_jupiter_new.png")
p3 = Planet.create(name: "Mars", photo: "https://solarsystem.nasa.gov/system/feature_items/images/19_mars.png")
p4 = Planet.create(name: "Mercury", photo: "https://solarsystem.nasa.gov/system/feature_items/images/18_mercury_new.png")
p5 = Planet.create(name: "Moon", photo: "https://solarsystem.nasa.gov/system/feature_items/images/31_earth_moon.png")
p6 = Planet.create(name: "Neptune", photo: "https://solarsystem.nasa.gov/system/feature_items/images/30_neptune.png")
p7 = Planet.create(name: "Saturn", photo: "https://solarsystem.nasa.gov/system/feature_items/images/28_saturn.png")
p8 = Planet.create(name: "Uranus", photo: "https://solarsystem.nasa.gov/system/feature_items/images/29_uranus.png")
p9 = Planet.create(name: "Venus", photo: "https://solarsystem.nasa.gov/system/feature_items/images/27_venus_jg.png")


j1 = Journey.create(departure: p1.name, arrival: p5.name, driver: d1, photo: p5.photo, price: 5000, available_seats: 30, spaceship_name: "Moon Express", date: DateTime.parse('2020-03-14T07:00:00'))
j2 = Journey.create(departure: p1.name, arrival: p3.name, driver: d2, photo: p3.photo, price: 150000, available_seats: 200, spaceship_name: "New World", date: DateTime.parse('2020-03-14T07:00:00'))
j3 = Journey.create(departure: p2.name, arrival: p8.name, driver: d1, photo: p8.photo, price: 1400, available_seats: 10, spaceship_name: "Space Explorer", date: DateTime.parse('2020-03-14T07:00:00'))
j4 = Journey.create(departure: p7.name, arrival: p1.name, driver: d1, photo: p1.photo, price: 8999, available_seats: 80, spaceship_name: "Rucket", date: DateTime.parse('2020-03-14T07:00:00'))
j5 = Journey.create(departure: p2.name, arrival: p9.name, driver: d1, photo: p9.photo, price: 600, available_seats: 5, spaceship_name: "Lightspeed", date: DateTime.parse('2020-03-14T07:00:00'))


Reservation.create(amount_of_passengers: 4, journey: j1, passenger: max)
Reservation.create(amount_of_passengers: 40, journey: j2, passenger: max)
Reservation.create(amount_of_passengers: 60, journey: j2, passenger: xav)
Reservation.create(amount_of_passengers: 20, journey: j2, passenger: roger)
Reservation.create(amount_of_passengers: 80, journey: j2, passenger: gee)
Reservation.create(amount_of_passengers: 3, journey: j3, passenger: roger)
Reservation.create(amount_of_passengers: 1, journey: j3, passenger: roger)
Reservation.create(amount_of_passengers: 2, journey: j3, passenger: gee)
Reservation.create(amount_of_passengers: 1, journey: j3, passenger: max)
Reservation.create(amount_of_passengers: 1, journey: j3, passenger: xav)
Reservation.create(amount_of_passengers: 1, journey: j3, passenger: xav)
Reservation.create(amount_of_passengers: 10, journey: j4, passenger: roger)
Reservation.create(amount_of_passengers: 2, journey: j4, passenger: max)

