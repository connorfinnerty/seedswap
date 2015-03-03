# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

connor_user = User.create!(name: 'John', email:'connorfinnerty@gmail.com', role:'admin', password: 'password')

john_user = User.create!(name: 'John', email:'john@example.com', role:'admin', password: 'password')

jane_user = User.create!(name: 'Jane', email:'jane@example.com', role:'admin', password: 'password')

bell_pepper = Variety.create!(common_name: 'Bell Pepper', species: "Capsicum annuum", variety: 'Bell Pepper', genus: "Capsicum")

connors_bell_pepper = Post.create!(variety_id: bell_pepper.id, quantity: 5, name: "connor's bell peppers", tested: true, user_id: connor_user.id, description: "Leftovers of a High Mowing seed package from spring of 2014")

pumpkin = Variety.create!(common_name: 'Pumpkin', species: "", variety: 'Bell Pepper', genus: "Cucurbita")

white_pumpkin = Post.create!(variety_id: pumpkin.id, quantity: 5, name: "White pumpkin", tested: true, user_id: jane_user.id, description: "White pumpkin from the Intervale")

watermelon = Post.create!(quantity: 5, name: "Watermelon", tested: true, user_id: john_user.id, description: "Watermelon from the Bahamas")
