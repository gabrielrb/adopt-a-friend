# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Animal.destroy_all

3.times do
  animal = Animal.new(name: Faker::Creature::Cat.name,
                      birth_date: Faker::Date.between(from: '2014-09-23', to: '2019-09-25'),
                      type: 'cat')
  animal.save!
end

3.times do
  animal = Animal.new(name: Faker::Creature::Dog.name,
                      birth_date: Faker::Date.between(from: '2014-09-23', to: '2019-09-25'),
                      type: 'dog')
  animal.save!
end
