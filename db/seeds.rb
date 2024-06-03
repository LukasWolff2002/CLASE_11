# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(name: "Bob", email: 'hola@gmail.com')
User.create(name: "Alice", email: 'hola@gmail.com')
User.create(name: "Carol", email: 'hola@gmail.com')
User.create(name: "David", email: 'hola@gmail.com')
User.create(name: "Eve", email: 'hola@gmail.com')
