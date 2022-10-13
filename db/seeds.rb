require "open-uri"
Cosplay.destroy_all
User.destroy_all
Booking.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
user = User.create(email: 'test@gmail.com', password: '123456')
user2 = User.create(email: 'amee@gmail.com', password: '123456')

cosplays_bat = Cosplay.new(name: "Batman", price: "10000", category: "Film", size: "slim-fit 2xL")

file = URI.open("https://images.unsplash.com/photo-1588862081167-d5b98006637e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")

cosplays_bat.photo.attach(io: file,
                          filename: "Batman.jpg",
                          content_type: "image/jpg")
cosplays_bat.user = user
cosplays_bat.save!

cosplays_spi = Cosplay.new(name: "SpiderMan", price: "1455", category: "cartoon", size: "medium")
file = URI.open("https://images.unsplash.com/photo-1636569061713-0212bd19e3e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80")
cosplays_spi.photo.attach(io: file,
                          filename: "Spiderman.jpg",
                          content_type: "image/jpg")

cosplays_spi.user = user
cosplays_spi.save!

cosplays_ant = Cosplay.new(name: "Harley Quinn", price: "2300", category: "cartoon", size: "small")
file = URI.open("https://images.unsplash.com/photo-1553717188-e8b63785ee24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
cosplays_ant.photo.attach(io: file,
                          filename: "Harley quinn.jpg",
                          content_type: "image/jpg")
cosplays_ant.user = user2
cosplays_ant.save!


cosplays_dea = Cosplay.new(name: "Jocker", price: "2000", category: "cartoon", size: "extra large")
file = URI.open("https://images.unsplash.com/photo-1568345889086-379dc9b8635b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
cosplays_dea.photo.attach(io: file,
                          filename: "Jocker.jpg",
                          content_type: "image/jpg")
cosplays_dea.user = user2
cosplays_dea.save!



cosplays_de = Cosplay.new(name: "Mulan", price: "1200", category: "cartoon", size: "extra large")
file = URI.open("https://images.unsplash.com/photo-1600385546605-536b691202df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=476&q=80")
cosplays_de.photo.attach(io: file,
                          filename: "Mulan.jpg",
                          content_type: "image/jpg")
cosplays_de.user = user2
cosplays_de.save!
# cosplays_car = Cosplay.new(name: "Cars", price: "10000", category: "cartoon", size: "large")
# file = URI.open("https://i.etsystatic.com/19750816/r/il/b2956a/3571685226/il_fullxfull.3571685226_11n2.jpg")
# cosplays_spi.photo.attach(io: file,
#                           filename: "Spiderman.jpg",
#                           content_type: "image/jpg")
# cosplays_car.save!


cosplays_car = Cosplay.new(name: "Transformers", price: "10000", category: "cartoon", size: "large")
file = URI.open("https://images.halloweencostumes.com/products/41834/1-2/child-optimus-prime-prestige-costume-update-2.jpg")
cosplays_car.photo.attach(io: file,
                          filename: "Transfomer.jpg",
                          content_type: "image/jpg")
cosplays_car.user = user
cosplays_car.save!

cosplays_nar = Cosplay.new(name: "Naruto", price: "850", category: "cartoon", size: "slim-fit")
file = URI.open("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5a16c3d5-f041-41e3-80ab-f2f67f4b07bd/d1pp953-56f39e2a-b901-448a-accc-cbc81a77cdbf.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVhMTZjM2Q1LWYwNDEtNDFlMy04MGFiLWYyZjY3ZjRiMDdiZFwvZDFwcDk1My01NmYzOWUyYS1iOTAxLTQ0OGEtYWNjYy1jYmM4MWE3N2NkYmYuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.4lmROBqiuetLH6YFsZ6BHjIpRMmS9Gz9A8u_jEFIFWE")
cosplays_nar.photo.attach(io: file,
                          filename: "Naruto.jpg",
                          content_type: "image/jpg")
cosplays_nar.user = user2
cosplays_nar.save!

cosplays_d = Cosplay.new(name: "Deadpool", price: "4500", category: "cartoon", size: "xxxxL")
file = URI.open("https://media.simcosplay.com/media/catalog/product/cache/1/image/800x800/9df78eab33525d08d6e5fb8d27136e95/d/e/deadpool_2_wade_wilson_cosplay_costume.jpg")
cosplays_d.photo.attach(io: file,
                          filename: "Deadpool.jpg",
                          content_type: "image/jpg")
cosplays_d.user = user
cosplays_d.save!


# # # Examples:
# #
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
