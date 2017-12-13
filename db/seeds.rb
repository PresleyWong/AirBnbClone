# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(
		first_name: "Linus",
		last_name: "Sebastian",
		email: "user1@example.com",
		password: "123456",
		avatar: File.open(File.join(Rails.root, "/app/assets/images/people_8.png"))
	)


10.times do
	avatar_img = "/app/assets/images/people_"+ rand(1..8).to_s + ".png"
	user = User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.unique.email + rand(10).to_s,
		password: "123456",
		avatar: File.open(File.join(Rails.root, avatar_img)) 
	)	
end	

photos = []
8.times.each { |x|  photos << File.open(File.join(Rails.root, "/app/assets/images/place_" + "#{x+1}" + ".png")) }


12.times do
	place = Place.create(
		listing_name: Faker::Lorem.paragraph(1),	
		summary: Faker::Lorem.paragraph(2),
		address: Faker::Address.street_address,
		price: rand(200..1000),
		home_type: ["House", "Apartment", "Condominium"].sample,
		accommodate: rand(2..6),
		bed_room: rand(2..6),
		bath_room: rand(1..3),
		is_tv: [true, false].sample,
		is_kitchen: [true, false].sample,
		is_air: [true, false].sample,
		is_heating: [true, false].sample,
		is_internet: [true, false].sample,
		active: true,
		# latitude: Faker::Address.latitude, 
		# longitude: Faker::Address.longitude,
		user_id: User.all.sample.id,	
		images: photos.sample(3) 
	)	
end


25.times do
	Review.create(
        star:  rand(3..5),
        comment: Faker::Lorem.paragraph(2),
        user_id: User.all.sample.id,
        place_id: Place.all.sample.id    
	)
end

# 	Reservation.create(
# 		num_guest: rand(1..6),
# 		total: rand(200..1000),
# 		check_in_date: Faker::Date.between(100.days.ago, 80.days.ago),
# 		check_out_date: Faker::Date.between(70.days.ago, 50.days.ago),		
# 		user_id: rand(1..50),
# 		place_id: rand(1..50)    
# 	)
# end



