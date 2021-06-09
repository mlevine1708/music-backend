# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: 'Micah')

post = Post.create(user_id: 1, title: 'Top Five Rock Albums', content: '1. Appetite For Destruction, 2. Back In Black, 3. Led Zeppelin IV, 4. Master Of Puppets, 5. Ride The Lightning', date: Date.today)

