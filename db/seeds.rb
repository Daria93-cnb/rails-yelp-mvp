# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants = [
  { name: 'Golden Dragon', address: '123 Chinatown, London', phone_number: '02012345678', category: 'chinese' },
  { name: 'Bella Italia', address: '456 Rome St, London', phone_number: '02023456789', category: 'italian' },
  { name: 'Sakura Sushi', address: '789 Tokyo Ave, London', phone_number: '02034567890', category: 'japanese' },
  { name: 'Le Gourmet', address: '321 Paris Blvd, London', phone_number: '02045678901', category: 'french' },
  { name: 'Belgian Bites', address: '654 Brussels Rd, London', phone_number: '02056789012', category: 'belgian' }
]

Restaurant.create!(restaurants)

puts 'Finished!'
