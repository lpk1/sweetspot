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
user4 = User.create(email: "lenny@me.com", password: "123456")

spot1 = Spot.new(name: "Miami Beach", address: "Miami Beach", latitude: rand() * 90, longitude: rand() * 180, description: "Hi there this is a nice place in miami for camping.")
spot1.user = user1
spot1.save

spot2 = Spot.new(name: "Southpole", address: "Southpole", latitude: rand() * 90, longitude: rand() * 180, description: "Southpole. Flat out stunning landscape. Haven't found an single eis-beergen")
spot2.user = user1
spot2.save

spot3 = Spot.new(name: "Bavaria", address: "München", latitude: rand() * 90, longitude: rand() * 180, description: "Bavariaaaaaaa. It has beeeeer")
spot3.user = user3
spot3.save

spot4 = Spot.new(name: "Berlin", address: "rudi-dutschke-strasse 60", latitude: rand() * 90, longitude: rand() * 180, description: "Berlin. City of awsome. Is this enough characters?")
spot4.user = user3
spot4.save

spot5 = Spot.new(name: "Santa Cruz", address: "Santa Cruz", latitude: rand() * 90, longitude: rand() * 180, description: "Santa Cruz. Home town to crazy mfkrs.")
spot5.user = user2
spot5.save

spot6 = Spot.new(name: "Lennys Crib", address: "@Lennys - The greatest place", latitude: rand() * 90, longitude: rand() * 180, description: "Everyone is welcome at all times. Requirements include a sixpack of Corona.")
spot6.user = user4
spot6.save

spot_review = SpotReview.new(spot_rating: 5, review_description: "Amaaziiiing. Miami is the sh*t.")
spot_review.user = user1
spot_review.spot = spot1
spot_review.save!

spot_review_two = SpotReview.new(spot_rating: 3, review_description: "Can NOT believe how good this was.")
spot_review_two.user = user2
spot_review_two.spot = spot2
spot_review_two.save!

spot_review_three = SpotReview.new(spot_rating: 4, review_description: "Can NOT believe how good this was.")
spot_review_two.user = user3
spot_review_two.spot = spot1
spot_review_two.save!

spot_booking_one = SpotBooking.new(start_date: Date.yesterday, end_date: Date.today, is_approved: true)
spot_booking_one.user = user1
spot_booking_one.spot = spot1
spot_booking_one.save!

spot_booking_two = SpotBooking.new(start_date: Date.yesterday, end_date: Date.today, is_approved: true)
spot_booking_two.user = user3
spot_booking_two.spot = spot2
spot_booking_two.save!

spot_booking_three = SpotBooking.new(start_date: Date.yesterday, end_date: Date.tomorrow, is_approved: true)
spot_booking_three.user = user1
spot_booking_three.spot = spot6
spot_booking_three.save!

spot_booking_four = SpotBooking.new(start_date: Date.yesterday, end_date: Date.today, is_approved: true)
spot_booking_four.user = user2
spot_booking_four.spot = spot6
spot_booking_four.save!

spot_booking_five = SpotBooking.new(start_date: Date.today, end_date: Date.tomrrow, is_approved: true)
spot_booking_five.user = user3
spot_booking_five.spot = spot6
spot_booking_five.save!
