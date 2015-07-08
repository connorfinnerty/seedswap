# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

connor_user = User.create!(name: 'Connor', email:'connorfinnerty@gmail.com', role:'admin', password: 'password', city: 'Burlington', state: 'VT')

josh_user = User.create!(name: 'Josh', email:'josh@example.com', role:'admin', password: 'password', city: 'Stowe', state: 'VT')

connors_bell_pepper = Post.create!(quantity: 5, name: "Connor's Bell Peppers", tested: true, user_id: connor_user.id, description: "Leftovers of a High Mowing seed package from spring of 2014")

white_pumpkin = Post.create!(quantity: 5, name: "White pumpkin", tested: true, user_id: josh_user.id, description: "White pumpkin from the Intervale")

watermelon = Post.create!(quantity: 5, name: "Watermelon", tested: true, user_id: connor_user.id, description: "Watermelon from the Bahamas")
