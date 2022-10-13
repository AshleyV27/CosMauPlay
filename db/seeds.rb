require "open-uri"
Cosplay.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
cosplays_bat = Cosplay.new(name: "Batman", price: "100", category: "cartoon", size: "slim-fit 2xL")
file = URI.open("https://images.unsplash.com/photo-1588862081167-d5b98006637e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
cosplays_bat.photo.attach(io: file,
                          filename: "Batman.jpg",
                          content_type: "image/jpg")
cosplays_bat.save!

cosplays_spi = Cosplay.new(name: "Spider", price: "1455", category: "cartoon", size: "medium")
file = URI.open("https://images.unsplash.com/photo-1636569061713-0212bd19e3e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80")
cosplays_spi.photo.attach(io: file,
                          filename: "Spiderman.jpg",
                          content_type: "image/jpg")
cosplays_spi.save!

cosplays_ant = Cosplay.new(name: "Harley quinn", price: "231", category: "cartoon", size: "small")
file = URI.open("https://images.unsplash.com/photo-1553717188-e8b63785ee24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
cosplays_ant.photo.attach(io: file,
                          filename: "Harley quinn.jpg",
                          content_type: "image/jpg")
cosplays_ant.save!


cosplays_dea = Cosplay.new(name: "Jocker", price: "654", category: "cartoon", size: "extra large")
file = URI.open("https://images.unsplash.com/photo-1568345889086-379dc9b8635b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
cosplays_dea.photo.attach(io: file,
                          filename: "Jocker.jpg",
                          content_type: "image/jpg")
cosplays_dea.save!


cosplays_dea = Cosplay.new(name: "Mulan", price: "654", category: "cartoon", size: "extra large")
file = URI.open("https://images.unsplash.com/photo-1600385546605-536b691202df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=476&q=80")
cosplays_dea.photo.attach(io: file,
                          filename: "Mulan.jpg",
                          content_type: "image/jpg")
cosplays_dea.save!
# cosplays_car = Cosplay.new(name: "Cars", price: "10000", category: "cartoon", size: "large")
# file = URI.open("https://i.etsystatic.com/19750816/r/il/b2956a/3571685226/il_fullxfull.3571685226_11n2.jpg")
# cosplays_spi.photo.attach(io: file,
#                           filename: "Spiderman.jpg",
#                           content_type: "image/jpg")
# cosplays_car.save!

# cosplays_nar = Cosplay.new(name: "Naruto", price: "85", category: "cartoon", size: "slim-fit")
# cosplays_nar.save!

# cosplays_dea = Cosplay.new(name: "Deadpool", price: "15", category: "cartoon", size: "xxxxL")
# cosplays_dea.save!
# # # Examples:
# #
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
