# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  [
    {
      name: 'ゲスト',
      email: 'test@mail.com',
      password: 'test',
      password_confirmation: 'test',
    },
  ]
)

users = User.all
  30.times do
  title = Faker::JapaneseMedia::SwordArtOnline.game_name
  description = Faker::JapaneseMedia::SwordArtOnline.location
  users.each { |user| user.tasks.create!(title: title, description: description) }
end