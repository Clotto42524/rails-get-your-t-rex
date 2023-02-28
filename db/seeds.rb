# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning DB"
Dinosaur.destroy_all
puts "creating new dinos"
Dinosaur.create(name: "Nori", description: "Nori is from the US and loves hot climate. Good if you have some trees around for his vegetarian diet", age: "89 million years", user: User.last)
Dinosaur.create(name: "T-Rexo", description: "Rexo is a bit aggressive, be careful if you have dogs.", age: "66 million years", user: User.first)
Dinosaur.create(name: "Gwen", description: "Flying Reptile, he loves his freedom and likes flying at the beach", age: "38 million years", user: User.first)
Dinosaur.create(name: "Helmut", description: "Helmut likes long walks in the forest", age: "155 million years", user: User.last)


puts "done"
