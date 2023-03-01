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
Dinosaur.create(name: "Nori", description: "Nori the Nothronychus is from the US and loves hot climates. Good if you have some trees around for his vegetarian diet. But it's totally up to you which trees you provide.",
  age: "89 million years", user: User.last)
Dinosaur.create(name: "T-Rexo", description: "Rexo the huge Tyrannosaurus is a bit aggressive, be careful if you have dogs. Also show some dominace if he gets angry. Otherwise it you could lose control of him.",
  age: "66 million years", user: User.first)
Dinosaur.create(name: "Gwen", description: "The Gwawinapterus Gwen loves his freedom and likes flying at the beach. So please make sure you live close to the shore. Otherwise he will get sad.",
  age: "38 million years", user: User.first)
Dinosaur.create(name: "Helmut", description: "Helmut is a Europasaurus and likes long walks in the forest. He will be happy if you join him for those hours. He is also always up for a good talk.",
  age: "155 million years", user: User.last)
Dinosaur.create(name: "Erl", description: "Erl the Erlikosaurus is a real beauty. He can never get enough of beauty evenings and wellness. Look at him! Wow. Such an amazing creature.",
  age: "83 million years", user: User.last)
Dinosaur.create(name: "Titan", description: "Titano, the friendly Titanosaurus from India, likes to get hugged. You will find a friend for life in him. He also needs a lot of attention to feel happy.",
  age: "66 million years", user: User.last)
Dinosaur.create(name: "Palino", description: "Palino loves sport. He is a Palaeoscincus and especially enjoys weight lifting. He is kind of addicted to it. So provide a good workout area for him.",
  age: "100 million years", user: User.last)
Dinosaur.create(name: "Nomi", description: "Nomi is a rare Nomingia-Dinosaur. Kids especially will love her because of her colorful appearance. She goes also very well along with kids and dogs. Just with cats she has a problem.",
  age: "66 million years", user: User.last)
Dinosaur.create(name: "Richard", description: "Richard the Ampelosaurus is such a strong beast. He needs a lot of attention. Attention: please no kids around him! He is a herbivore but we don't know how he will react to little humans.",
  age: "66 million years", user: User.last)
Dinosaur.create(name: "Sprinty", description: "Sprinty the Sarcosaurus is addicted to running. You need a huge area where he can make some powerful sprints during the day. Also take care to give him regular meat. Otherwise he can get a bit unfriendly.",
  age: "93 million years", user: User.last)
Dinosaur.create(name: "Steven", description: "Steven the Stegosaurus is our chill dinosaur. He is the only one which is known to get along well with cats. They can even get friends sometimes.",
  age: "88 million years", user: User.last)
Dinosaur.create(name: "Draco", description: "About Draco the Dracopelta we don't know too much. He is a herbivore but still he is a very strong opponent if he gets angry. So pay some attention when he gets hungry.",
  age: "145 million years", user: User.last)
Dinosaur.create(name: "Orio", description: "Orio the Scansoriopterys is a real cutie. He is playful, friendly and happy to meet new people. Just provide some nice maggots and worms every few hours.",
  age: "125 million years", user: User.last)
Dinosaur.create(name: "Kala", description: "Kala is a hairy Alaskacephale and always up for a good salad. She loves espeacially the french version of a chicory salad and a good coffee.",
  age: "70 million years", user: User.last)
Dinosaur.create(name: "Greg", description: "Greg, is a Gryphoceratops. He is basically open to everything and everyone. He is like a good friend. Always there for you.",
  age: "85 million years", user: User.last)
puts "done"
