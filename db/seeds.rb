# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
cosplays_bat = Cosplay.new(name: "Batman", price: "100", category: "cartoon", size: "slim-fit 2xL")
cosplays_bat.save!
cosplays_spi = Cosplay.new(name: "Spider", price: "1455", category: "cartoon", size: "medium")
cosplays_spi.save!
cosplays_ant = Cosplay.new(name: "Antman", price: "231", category: "cartoon", size: "small")
cosplays_ant.save!
cosplays_dea = Cosplay.new(name: "Deamon slayer", price: "654", category: "cartoon", size: "extra large")
cosplays_dea.save!
cosplays_car = Cosplay.new(name: "Cars", price: "10000", category: "cartoon", size: "large")
cosplays_car.save!
cosplays_nar = Cosplay.new(name: "Naruto", price: "85", category: "cartoon", size: "slim-fit")
cosplays_nar.save!
cosplays_dea = Cosplay.new(name: "Deadpool", price: "15", category: "cartoon", size: "xxxxL")
cosplays_dea.save!
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
