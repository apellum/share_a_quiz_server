# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding database"

User.create(name: "Test Tester", username: "test", email: "t@test.com", password: "password", date_of_birth: "09-09-1909")
User.create(name: "John Stamos", username: "fullhouse", email: "john@fullhouse.com", password: "stamos", date_of_birth: "09-09-1909")

puts "completed seeding"