User.delete_all
Spot.delete_all
SpotReview.delete_all
SpotBooking.delete_all

# check again how users are created. they do NOT seem to get an id. are they saved?
user1 = User.create(email: "testemail@12345me.com", password: "123456")
user2 = User.create(email: "christmaspowder@anonymous.com", password: "847463")
user3 = User.create(email: "eastereggs@jamiesidea.com", password: "4829575")
user4 = User.create(email: "lenny@me.com", password: "123456")
user5 = User.create(email: "tim@me.com", password: "234567")

spot1 = Spot.new(
  name: "Miami Beach",
  address: "Miami Beach",
  description: "Hi there this is a nice place in miami for camping.",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542896208/miami.jpg')
  )
spot1.user = user1
spot1.save

spot2 = Spot.new(
  name: "Nice Lake in Brandenburg",
  address: "Brandenburg",
  description: "Beautiful Lake Spot",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542896208/bandenburg.jpg')
  )
spot2.user = user1
spot2.save

spot3 = Spot.new(
  name: "Great View in Bavaria",
  address: "Karlstrasse 35",
  description: "Bavariaaaaaaa. It has beeeeer",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542896208/bavaria.jpg')
  )
spot3.user = user3
spot3.save

spot4 = Spot.new(
  name: "Berlin",
  address: "Ostkreuz",
  description: "Berlin. Great place to wait ouside of clubs in the winter",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542896208/berlin.jpg')
  )
spot4.user = user3
spot4.save

spot5 = Spot.new(
  name: "Coin, Spain",
  address: "Plaza de la Alameda",
  description: "Santa Cruz. Home town to crazy mfkrs.",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542896210/spain.jpg')
  )
spot5.user = user2
spot5.save

spot6 = Spot.new(
  name: "Lennys Crib",
  address: "Cote d'azur",
  description: "Everyone is welcome at all times. Requirements include a sixpack of Corona. Yes, his taste is aweful.",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542896208/lenny.jpg')
  )
spot6.user = user4
spot6.save

spot7 = Spot.new(
  name: "Jamies Crib",
  address: "Santa Clara",
  description: "Very beautiful sail boat",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542903500/boat-classic-clouds-173910.jpg')
  )
spot7.user = user4
spot7.save

spot8 = Spot.new(
  name: "Rhett's Crib",
  address: "Dresden, Germany",
  description: "Lots of techno and drugs there",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542903604/rhett.jpg')
  )
spot8.user = user4
spot8.save

spot9 = Spot.new(
  name: "Tim's Crib",
  address: "Has free heating",
  description: "not so much daylight",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542904020/tim.jpg')
  )
spot9.user = user4
spot9.save

spot10 = Spot.new(
  name: "Coast in Scotland",
  address: "Scotland",
  description: "Everyone is welcome at all times. Requirements include a sixpack of Corona. Yes, his taste is aweful.",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542904174/scotland.jpg')
  )
spot10.user = user4
spot10.save

spot11 = Spot.new(
  name: "Rice field in Bali",
  address: "Bali, INdonesia",
  description: "Lots of rice here.",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542904256/bali.jpg')
  )
spot11.user = user4
spot11.save

spot12 = Spot.new(
  name: "Mountains in Yunnan Province",
  address: "Yunnan Province",
  description: "Everyone is welcome at all times. Requirements include a sixpack of Corona. Yes, his taste is aweful.",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542904348/yunnan.jpg')
  )
spot12.user = user4
spot12.save

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

spot_booking_one = SpotBooking.new(start_date: Date.yesterday, end_date: Date.today, is_approved: false)
spot_booking_one.user = user1
spot_booking_one.spot = spot1
spot_booking_one.save!

spot_booking_two = SpotBooking.new(start_date: Date.yesterday, end_date: Date.today, is_approved: true)
spot_booking_two.user = user3
spot_booking_two.spot = spot2
spot_booking_two.save!

spot_booking_three = SpotBooking.new(start_date: Date.yesterday, end_date: Date.tomorrow, is_approved: false)
spot_booking_three.user = user1
spot_booking_three.spot = spot6
spot_booking_three.save!

spot_booking_four = SpotBooking.new(start_date: Date.yesterday, end_date: Date.today, is_approved: false)
spot_booking_four.user = user2
spot_booking_four.spot = spot6
spot_booking_four.save!

spot_booking_five = SpotBooking.new(start_date: Date.today, end_date: Date.tomorrow, is_approved: true)
spot_booking_five.user = user3
spot_booking_five.spot = spot6
spot_booking_five.save!
