# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { email: "testemail@12345me.com", encrypted_password: "12345", first_name: "jamie", last_name: "brouwer"},
  { email: "christmaspowder@anonymous.com", encrypted_password: "98765", first_name: "rhett", last_name: "büttrich"}
])

spots = Spot.create([
  { name: "Miami Beach", latitude: rand(-1, 1) * 90, longitude: rand(-1, 1) * 180, description: "Hi there this is a nice place in miami for camping."},
  { name: "Southpole", latitude: rand(-1, 1) * 90, longitude: rand(-1, 1) * 180, description: "Southpole. Flat out stunning landscape. Haven't found an single eis-beergen"}
])

spot_review = SpotReview.new(spot_rating: 5, review_description: "Amaaziiiing")
spot_review.user = User.find(1)
spot_review.spot = Spot.find(1)

spot_review_two = SpotReview.new(spot_rating: 5, review_description: "Can NOT believe how good this was.")
spot_review_two.user = User.find(2)
spot_review_two.spot = Spot.find(2)

spot_booking = SpotBooking.new(booking_date: Date.today, is_approved: true)
spot_booking.user = User.find(1)
spot_booking.spot = Spot.find(1)
