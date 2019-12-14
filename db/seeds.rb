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
    phone_number:  '01 45 54 47 17',
    category:      'chinese',
    description:   'Buzzy destination for Indian street food in Bombay-style vintage decor.'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '07 87 88 91 45',
    category:     'italian',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.'
  },
  {
    name:         'Pizza West',
    address:      '69A West High St, New York E2 7PQ',
    phone_number: '09 87 65 33 10',
    category:     'italian',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.'
  },
  {
    name:         'Mc Do',
    address:      'Beaugrenelle, Paris',
    phone_number: '01 56 77 84 92',
    category:     'french',
    description:   'Burgers, fries, potatoes and wrap fast food.'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'