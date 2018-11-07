# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: "1929312902304",
    category:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    reviews:        "It's great place to bring friends for a beer"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: "134593402304",
    category:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    reviews:        "The food lacked flavor"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
