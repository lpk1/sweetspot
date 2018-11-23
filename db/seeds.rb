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
user6 = User.create(email: "bob@sweetspot.com", password: "123456")


spot1 = Spot.new(
  name: "Brandenburg Gate",
  address: "Brandenburg Gate, Pariser Platz, Berlin, 10117, Germany",
  description: "Very Central",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542969038/brandenburg_gate.jpg')
  )
spot1.user = user1
spot1.save

spot2 = Spot.new(
  name: "German Parliament",
  address: "Reichstag, Platz der Republik 1, Berlin, 10557, Germany",
  description: "Right in the center of the political Berlin",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542969136/architecture-berlin-building-86456.jpg')
  )
spot2.user = user6
spot2.save

spot3 = Spot.new(
  name: "Museum Island",
  address: "Am Lustgarten, 10178 Berlin, Germany",
  description: "Great Spot in the middle of the museum island in Berlin",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542969288/museum.jpg')
  )
spot3.user = user3
spot3.save

spot4 = Spot.new(
  name: "Berghain",
  address: "Berghain OstGut GmbH, Rüdersdorfer Straße 70, Berlin, 10243, Germany",
  description: "Berlin. Great place to wait ouside of clubs in the winter",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542896208/berlin.jpg')
  )
spot4.user = user3
spot4.save

spot5 = Spot.new(
  name: "East Side Galery",
  address: "East Side Gallery, Mühlenstr., Berlin, 10243, Germany",
  description: "Lots of traffic and tourists",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542969758/eastsidegalery.jpg')
  )
spot5.user = user2
spot5.save

spot6 = Spot.new(
  name: "Lennys Crib",
  address: "Marschallbrücke, Luisenstr., Berlin, 10117, Germany",
  description: "Everyone is welcome at all times. Requirements include a sixpack of Corona. Yes, his taste is aweful.",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542896208/lenny.jpg')
  )
spot6.user = user4
spot6.save

spot7 = Spot.new(
  name: "River View",
  address: "Kapelle-Ufer, 10117 Berlin, Germany",
  description: "Very beautiful sail boat",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542903500/boat-classic-clouds-173910.jpg')
  )
spot7.user = user4
spot7.save

spot8 = Spot.new(
  name: "Rhett's Crib",
  address: "Alexanderplatz, Berlin, Germany",
  description: "Lots of techno and drugs there",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542903604/rhett.jpg')
  )
spot8.user = user4
spot8.save

spot9 = Spot.new(
  name: "Tim's Crib",
  address: "Brunnenstraße, 13355 Berlin, Germany",
  description: "not so much daylight",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542904020/tim.jpg')
  )
spot9.user = user4
spot9.save

spot10 = Spot.new(
  name: "Secret Coast in Berlin",
  address: "Fischerinsel, 10179 Berlin, Germany",
  description: "Lonely Place at the forgotten coast of Berlin.",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542904174/scotland.jpg')
  )
spot10.user = user4
spot10.save

spot11 = Spot.new(
  name: "Rhett's Garden",
  address: "Tiergarten, Straße des 17. Juni, Berlin, 10785, Germany",
  description: "Lots of interesting plants here",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542904256/bali.jpg')
  )
spot11.user = user4
spot11.save

spot12 = Spot.new(
  name: "Nice Hill in Kreuzberg",
  address: "Kreuzberg",
  description: "Everyone is welcome at all times. Requirements include a sixpack of Corona. Yes, his taste is aweful.",
  photo: open('https://res.cloudinary.com/dd7ah4ho2/image/upload/v1542904348/yunnan.jpg')
  )
spot12.user = user4
spot12.save

spot_review = SpotReview.new(spot_rating: 5, review_description: "Pretty clean for Berlin standards :)")
spot_review.user = user6
spot_review.spot = spot10
spot_review.save!

spot_review = SpotReview.new(spot_rating: 5, review_description: "bad place to sell drugs, only romantic couples here... :/")
spot_review.user = user4
spot_review.spot = spot10
spot_review.save!

spot_review = SpotReview.new(spot_rating: 5, review_description: "No späti here... went back schlesi really fast to get some more beer...")
spot_review.user = user3
spot_review.spot = spot10
spot_review.save!

spot_review_two = SpotReview.new(spot_rating: 3, review_description: "Soft concrete, smells like old beer.")
spot_review_two.user = user5
spot_review_two.spot = spot6
spot_review_two.save!

spot_review_two = SpotReview.new(spot_rating: 3, review_description: "Lots fo cigerettes that are only half smoked")
spot_review_two.user = user2
spot_review_two.spot = spot6
spot_review_two.save!

spot_review_three = SpotReview.new(spot_rating: 4, review_description: "Very calm here - crazy boy running around though")
spot_review_two.user = user2
spot_review_two.spot = spot11
spot_review_two.save!

spot_review_three = SpotReview.new(spot_rating: 4, review_description: "Calm place, always smells like weed.")
spot_review_two.user = user2
spot_review_two.spot = spot11
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
