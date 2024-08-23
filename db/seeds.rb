# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Destroying islands"
Island.destroy_all

sunny_retreat = {
  user_id: 1,
  name: "Sunny Retreat",
  description: "A beautiful sunny island with white sandy beaches and crystal-clear waters.",
  location: "Bahamas",
  price: 5000,
  image: "https://images.pexels.com/photos/27050408/pexels-photo-27050408/free-photo-of-a-boat-is-sitting-on-the-beach-near-palm-trees.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
}

tropical_paradise = {
  user_id: 1,
  name: "Tropical Paradise",
  description: "Experience the ultimate tropical paradise with lush greenery and serene surroundings.",
  location: "Maldives",
  price: 8000,
  image: "https://images.pexels.com/photos/1681148/pexels-photo-1681148.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
}

ocean_breeze = {
  user_id: 1,
  name: "Ocean Breeze",
  description: "A peaceful escape surrounded by the ocean, perfect for relaxation.",
  location: "Fiji",
  price: 4500,
  image: "https://images.pexels.com/photos/5707674/pexels-photo-5707674.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
}

island_escape = {
  user_id: 1,
  name: "Island Escape",
  description: "A secluded island with breathtaking views and luxury amenities.",
  location: "Seychelles",
  price: 9000,
  image: "https://images.pexels.com/photos/2310835/pexels-photo-2310835.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
}

coconut_cove = {
  user_id: 1,
  name: "Coconut Cove",
  description: "A cozy island retreat with palm trees and a private beach.",
  location: "Hawaii",
  price: 6500,
  image: "https://images.pexels.com/photos/19183353/pexels-photo-19183353/free-photo-of-palm-trees-on-a-beach-seen-from-the-sea.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
}

sunset_sands = {
  user_id: 1,
  name: "Sunset Sands",
  description: "A serene island escape with golden sands and breathtaking sunsets.",
  location: "Maldives",
  price: 8200,
  image: "https://images.pexels.com/photos/1133540/pexels-photo-1133540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
}

[sunny_retreat, tropical_paradise, ocean_breeze, island_escape, coconut_cove, sunset_sands].each do |attributes|
  island = Island.create!(attributes)
  puts "Created island #{island.name}"
end
