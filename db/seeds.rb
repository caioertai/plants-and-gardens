# frozen_string_literal: true

garden_names = ['Valhala', 'Paradise', "Grandma's Garden", 'Whatever']

garden_names.each_with_index do |garden_name, index|
  Garden.create!(
    name: garden_name,
    image_url: "https://source.unsplash.com/1200x900/?#{garden_name}"
  )
  puts "#{index + 1} gardens created"
end

plant_names = %w[coconut water green plant]

Garden.all.each do |garden|
  plant_names.each do |plant_name|
    Plant.create!(
      name: plant_name,
      image_url: 'https://source.unsplash.com/1200x900/?plant',
      garden: garden
    )
  end
end
