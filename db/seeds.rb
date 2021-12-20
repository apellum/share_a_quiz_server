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

# user.quizzes.create
jungle = User.first.quizzes.create(title: "Jungle Cats", category: "Animals", user_id: 1)
house_cats = User.first.quizzes.create(title: "House Cats", category: "Animals", user_id: 1)
baseball = Quiz.create(title: "Baseball Quiz", category: "Sports", user_id: 1)
football = Quiz.create(title: "Football Quiz", category: "Sports", user_id: 2)
full_house = Quiz.create(title: "Full House Quiz", category: "TV", user_id: 2)

Question.create(question: "What cat is black?", answer: "Panther", quiz_id: 1)
Question.create(question: "What cat has a mane?", answer: "Lion", quiz_id: 1)
Question.create(question: "What cat has stripes?", answer: "Tiger", quiz_id: 1)

Question.create(question: "What cat has a cartoon in the newspaper?", answer: "Garfield", quiz_id: 2)

Question.create(question: "Who is the alltime homerun leader?", answer: "Barry Bonds", quiz_id: 3)
Question.create(question: "Who is the alltime strikeout leader?", answer: "Nolan Ryan", quiz_id: 3)

Question.create(question: "Who is the GOAT?", answer: "Tom Brady", quiz_id: 4)
Question.create(question: "What team plays in New Orleans?", answer: "Saints", quiz_id: 4)

Question.create(question: "Who plays uncle Jessee?", answer: "John Stamos", quiz_id: 5)
Question.create(question: "Who plays Danny Tanner?", answer: "Bob Saget", quiz_id: 5)


puts "completed seeding"