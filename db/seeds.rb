# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

sunny_retreat = {
  user_id: 1,
  name: "Sunny Retreat",
  description: "A beautiful sunny island with white sandy beaches and crystal-clear waters.",
  location: "Bahamas",
  price: 5000
}

tropical_paradise = {
  user_id: 1,
  name: "Tropical Paradise",
  description: "Experience the ultimate tropical paradise with lush greenery and serene surroundings.",
  location: "Maldives",
  price: 8000
}

ocean_breeze = {
  user_id: 1,
  name: "Ocean Breeze",
  description: "A peaceful escape surrounded by the ocean, perfect for relaxation.",
  location: "Fiji",
  price: 4500
}

island_escape = {
  user_id: 1,
  name: "Island Escape",
  description: "A secluded island with breathtaking views and luxury amenities.",
  location: "Seychelles",
  price: 9000
}

coconut_cove = {
  user_id: 1,
  name: "Coconut Cove",
  description: "A cozy island retreat with palm trees and a private beach.",
  location: "Hawaii",
  price: 6500
}


[sunny_retreat, tropical_paradise, ocean_breeze, island_escape, coconut_cove].each do |attributes|
  island = Island.create!(attributes)
end
