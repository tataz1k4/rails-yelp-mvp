# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

mcdonalds = Restaurant.create(name: "McDonald's", address: "Rua dos Bobos, nº 0", phone_number: '40028922', category: 'chinese')
china_in_box = Restaurant.create(name: "China In Box", address: "qualquer lugar", phone_number: "01234 840200", category: "chinese")
pizza_hut = Restaurant.create(name: "Pizza Hut", address: "Vila Madalena", phone_number: "01234 283648", category: "italian")
brecho = Restaurant.create(name: "Brechó", address: "Vila Mariana", phone_number: "01234 627394", category: "french")
padaria = Restaurant.create(name: "Padaria", address: "Pinheiros", phone_number: "01234 987123", category: "belgian")

[mcdonalds, china_in_box, pizza_hut, brecho, padaria].each do |restaurant|
  3.times do
    Review.create(rating: (0..5).to_a.sample, content: "blablabla", restaurant: restaurant)
  end
end
