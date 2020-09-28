# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Animal.destroy_all

puts 'Start'

3.times do
  sleep(1)
  file = URI.open('https://source.unsplash.com/600x600/?cat')
  animal = Animal.new(name: Faker::Creature::Cat.name.downcase,
                      birth_date: Faker::Date.between(from: '2014-09-23', to: '2019-09-25'),
                      category: 'cat')
  animal.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  animal.save!
end

3.times do
  sleep(1)
  file = URI.open('https://source.unsplash.com/600x600/?dog')
  animal = Animal.new(name: Faker::Creature::Dog.name.downcase,
                      birth_date: Faker::Date.between(from: '2014-09-23', to: '2019-09-25'),
                      category: 'dog')
  animal.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  animal.save!
end

puts 'Finish'
