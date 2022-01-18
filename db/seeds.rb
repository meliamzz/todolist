# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "DB cleaning"
User.destroy_all

puts "DB cleaned!"

puts "User creation..."

user1 = User.create!(
  username: "Mélia",
  email: "melia@mail.com",
  password: "secret"
)

user2 = User.create!(
  username: "Julie",
  email: "julie@mail.com",
  password: "secret"
)

puts "User created!"

puts "Lists creation..."

list1 = List.create!(
  name: "Travaux",
  user: user1
)

list2 = List.create!(
  name: "Rangement",
  user: user1
)

list3 = List.create!(
  name: "baby",
  user: user2
)

puts "Lists created!"

puts "Tasks creation..."

task1 = Task.create!(
  description: "Enlever colle étage" ,
  list: list1
)

task1 = Task.create!(
  description: "Vider les gravats à la déchetterie",
  list: list1
)

task1 = Task.create!(
  description: "Nettoyer salle de bain",
  list: list2
)

task1 = Task.create!(
  description: "Nettoyer escaliers",
  list: list2
)
