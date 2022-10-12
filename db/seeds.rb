require "open-uri"
Cosplay.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
cosplays_bat = Cosplay.new(name: "Batman", price: "100", category: "cartoon", size: "slim-fit 2xL")
file = URI.open("https://static.wikia.nocookie.net/marvel_dc/images/4/4b/Batman_Vol_3_86_Textless.jpg/revision/latest?cb=20200502132734")
cosplays_bat.photo.attach(io: file,
                          filename: "Batman.jpg",
                          content_type: "image/jpg")
cosplays_bat.save!

cosplays_spi = Cosplay.new(name: "Spider", price: "1455", category: "cartoon", size: "medium")
file = URI.open("https://i.etsystatic.com/19750816/r/il/b2956a/3571685226/il_fullxfull.3571685226_11n2.jpg")
cosplays_spi.photo.attach(io: file,
                          filename: "Spiderman.jpg",
                          content_type: "image/jpg")
cosplays_spi.save!

cosplays_ant = Cosplay.new(name: "Antman", price: "231", category: "cartoon", size: "small")
file = URI.open("https://www.kigurumisir.com/image/cache/catalog/cos/KSC20090503/0-880x880.jpg")
cosplays_ant.photo.attach(io: file,
                          filename: "Antman.jpg",
                          content_type: "image/jpg")
cosplays_ant.save!


cosplays_dea = Cosplay.new(name: "Demons slayer", price: "654", category: "cartoon", size: "extra large")
file = URI.open("https://d1flfk77wl2xk4.cloudfront.net/Assets/GalleryImage/82/666/L_g0118266682.jpg")
cosplays_dea.photo.attach(io: file,
                          filename: "DemonSplayer.jpg",
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
