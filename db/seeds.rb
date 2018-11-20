# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Spot.delete_all
SpotReview.delete_all
SpotBooking.delete_all

# check again how users are created. they do NOT seem to get an id. are they saved?
user1 = User.create(email: "testemail@12345me.com", password: "123456")
user2 = User.create(email: "christmaspowder@anonymous.com", password: "847463")
user3 = User.create(email: "eastereggs@jamiesidea.com", password: "4829575")

spot1 = Spot.create(name: "Miami Beach", latitude: rand() * 90, longitude: rand() * 180, description: "Hi there this is a nice place in miami for camping.")
spot2 = Spot.create(name: "Southpole", latitude: rand() * 90, longitude: rand() * 180, description: "Southpole. Flat out stunning landscape. Haven't found an single eis-beergen")
spot3 = Spot.create(name: "Bavaria", latitude: rand() * 90, longitude: rand() * 180, description: "Bavariaaaaaaa")
spot4 = Spot.create(name: "Berlin", latitude: rand() * 90, longitude: rand() * 180, description: "Berlin. City of awsome")
spot5 = Spot.create(name: "Santa Cruz", latitude: rand() * 90, longitude: rand() * 180, description: "Santa Cruz. Home town to crazy mfkrs.")

spot_review = SpotReview.new(spot_rating: 5, review_description: "Amaaziiiing")
spot_review.user = user1
spot_review.spot = spot1
spot_review.save

spot_review_two = SpotReview.new(spot_rating: 5, review_description: "Can NOT believe how good this was.")
spot_review_two.user = user2
spot_review_two.spot = spot2
spot_review_two.save

spot_review_three = SpotReview.new(spot_rating: 5, review_description: "Can NOT believe how good this was.")
spot_review_two.user = user3
spot_review_two.spot = spot1
spot_review_two.save

spot_booking_one = SpotBooking.new(booking_date: Date.today, is_approved: true)
spot_booking_one.user = user1
spot_booking_one.spot = spot1
spot_booking_one.save

spot_booking_two = SpotBooking.new(booking_date: Date.today, is_approved: true)
spot_booking_two.user = user3
spot_booking_two.spot = spot2
spot_booking_two.save
