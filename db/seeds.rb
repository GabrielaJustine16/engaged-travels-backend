# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.create(name: "Gabriela", username: "Justine16", password_digest: "password") 
portland = Location.create!(city: "Portland", state: "Oregon", country: "USA") 
garden = portland.attractions.create!(name: "Garden", description: "The rose garden in portland")
gabriela = User.first
gabriela_garden = gabriela.trips.create!(start_date: "2019-06-16",end_date: "2019-07-16")
gabriela_garden.visits.create!(attraction: garden, date: "2019-06-16")
gabriela.comments.create!(content: "very pretty", attraction: garden)