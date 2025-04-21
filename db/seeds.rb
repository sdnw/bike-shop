# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Create one regular User and one Admin, each with a name
user  = User.find_or_create_by!(email: 'veazaog@gmail.com') do |u|
  u.name = 'Max'
end

admin = Admin.find_or_create_by!(email: 'stevendawn98@gmail.com') do |a|
  a.name = 'steben'
end

# 2. Create bikes as before
[:bmx, :mountain, :electric].each do |category|
  3.times do |n|
    Bike.find_or_create_by!(
      name:     "#{category.to_s.capitalize} Bike #{n + 1}",
      category: category,
      stock:    5,
      price:    (100 * (n + 1))
    )
  end
end

puts "Seed complete: #{User.count} user(s), #{Admin.count} admin(s), and #{Bike.count} bikes created."
