# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sports = Tag.create(name: 'sports')
SubTag.create(name: 'baseball', tag_id: sports.id)
SubTag.create(name: 'voleyball', tag_id: sports.id)
SubTag.create(name: 'boxing', tag_id: sports.id)
SubTag.create(name: 'basketball', tag_id: sports.id)

literature = Tag.create(name: 'literature')
SubTag.create(name: 'drama', tag_id: literature.id)
SubTag.create(name: 'suspense', tag_id: literature.id)
SubTag.create(name: 'horror', tag_id: literature.id)
SubTag.create(name: 'adventure', tag_id: literature.id)

music = Tag.create(name: 'music')
SubTag.create(name: 'pop', tag_id: music.id)
SubTag.create(name: 'rock', tag_id: music.id)
SubTag.create(name: 'rap', tag_id: music.id)

tourism = Tag.create(name: 'tourism')
SubTag.create(name: 'natural', tag_id: tourism.id)
SubTag.create(name: 'city', tag_id: tourism.id)
SubTag.create(name: 'health', tag_id: tourism.id)
SubTag.create(name: 'scientific', tag_id: tourism.id)


User.create(name: 'admin', email: 'admin@homify.com', password:'qwertyuiop', password_confirmation:'qwertyuiop')
puts 'User admin created'
puts 'email: admin@homify.com'
puts 'password: qwertyuiop'