# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



names = ["Valhala", "Paradise", "Grandma's Garden", "Whatever"]

counter = 0



3.times do
	counter +=1
	garden = Garden.new(name: names.sample, image_url: "https://source.unsplash.com/1200x900/?garden")
	garden.save
	puts "#{counter} gardens created"
end


array = %W(coconut water green plant)


3.times do 
	plant = Plant.new(name:array.sample, image_url: "https://source.unsplash.com/1200x900/?plant")
	plant.garden = Garden.all.sample
	plant.save
end