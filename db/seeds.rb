# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: 'Micah')

post = Post.create(user_id: 1, genre: 'rock', kind: 'albums', date: Date.today)

post = Post.create(user_id: 1, genre: 'soft rock', kind: 'songs', date: Date.today)