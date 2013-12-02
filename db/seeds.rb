# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Meow.create(file_name: 'meow1.mp3', cat: true)
Meow.create(file_name: 'meow2.mp3', cat: true)

Image.create(file_name: 'cat1.jpg', cat: true)
Image.create(file_name: 'human1.jpg', cat: false)