# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'date'

puts "Cleaning database..."
Operation.destroy_all

puts "Creating operations..."

operation_1 = Operation.create(
  title: "Cadeaux de fin d'année",
  state: "En préparation",
  description: "Chez Alasta, nous avons décidé de nous engager et de soutenir 3 projets qui font le monde de demain. Nous laissons choisir: 1 vote = 1 don supplémentaire d'Alasta au projet de votre choix.",
  targets: 250,
  votes: 17,
  total_amount: 5000,
  start_date: nil,
  end_date: nil 
)
puts "Created #{operation_1.title}"

operation_2 = Operation.create(
  title: "Opération n°2",
  state: "En attente de paiement",
  description: "",
  targets: 340,
  votes: 124,
  total_amount: 300,
  start_date: Date.new(2022, 9, 2),
  end_date: Date.new(2022, 11, 17)
)
puts "Created #{operation_2.title}"

operation_3 = Operation.create(
  title: "Opération n°2",
  state: "En cours",
  description: "",
  targets: 340,
  votes: 124,
  total_amount: 300,
  start_date: Date.new(2022, 9, 2),
  end_date: Date.new(2022, 11, 17)
)
puts "Created #{operation_3.title}"

operation_4 = Operation.create(
  title: "Opération n°3",
  state: "Cloturée",
  description: "",
  targets: 340,
  votes: 124,
  total_amount: 300,
  start_date: Date.new(2022, 9, 2),
  end_date: Date.new(2022, 11, 17)
)
puts "Created #{operation_4.title}"

puts "Finished!"