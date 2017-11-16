# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



50.times do
	user = User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.unique.email + rand(10).to_s,
		password: "12345678",
		avatar: Faker::LoremPixel.image("100x100", false, 'people')
	)	
	
	place = Place.create(
		listing_title: Faker::Lorem.paragraph(1),
		listing_image: Faker::LoremPixel.image("300x200", false, 'city'),
		description: Faker::Lorem.paragraph(2),
	    address: Faker::Address.building_number + Faker::Address.street_name + Faker::Address.street_address,
	    postcode: Faker::Address.postcode,
        city: Faker::Address.city_prefix,
        country: Faker::Address.country,
	    price: rand(200..1000),
	    max_guest: rand(2..6),
	    number_rooms: rand(2..6),
	    latitude: Faker::Address.latitude, 
	    longitude: Faker::Address.latitude,
	    owner_id: user.id
	)		
	
	place.create_amenity(
        kitchen: [true, false].sample,
        internet: [true, false].sample,
        tv: [true, false].sample,
        cable_tv: [true, false].sample,
        internet: [true, false].sample,
        washer: [true, false].sample,
        gym: [true, false].sample,
        handicap_accessible: [true, false].sample,
        smoking_allowed: [true, false].sample,
        indoor_fireplace: [true, false].sample,
        air_conditiong: [true, false].sample,
        heating: [true, false].sample,
        dryer: [true, false].sample
	)	
end

70.times do
	Review.create(
        rating:  rand(2..5),
       	comment: Faker::Lorem.paragraph(2),
      	user_id: rand(1..50),
      	place_id: rand(1..50)    
	)

	Booking.create(
        headcount: rand(2..6),
     	total_price: rand(200..1000),
      	check_in_date: Faker::Date.between(100.days.ago, 80.days.ago),
     	check_out_date: Faker::Date.between(70.days.ago, 50.days.ago),
     	confirmation: true,
      	user_id: rand(1..50),
      	place_id: rand(1..50)    
	)
end



