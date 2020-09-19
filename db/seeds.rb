# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
User.delete_all
Tweet.delete_all

(3).times do 
    user = User.create(user_name: Faker::Twitter.unique.screen_name)
    Tweet.create(user_id: user.id, message: Faker::Quote.unique.famous_last_words)
end