# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Meow.destroy_all
Image.destroy_all

Meow.create(file_name: 'meow1.mp3', cat: true)
Meow.create(file_name: 'meow2.mp3', cat: true)
Meow.create(file_name: 'meow3.mp3', cat: false)
Meow.create(file_name: 'meow4.mp3', cat: false)
Meow.create(file_name: 'meow5.mp3', cat: true)
Meow.create(file_name: 'meow6.mp3', cat: false)
Meow.create(file_name: 'meow7.mp3', cat: true)
Meow.create(file_name: 'meow8.mp3', cat: false)
Meow.create(file_name: 'meow9.mp3', cat: false)
Meow.create(file_name: 'meow10.mp3', cat: true)
Meow.create(file_name: 'meow11.mp3', cat: true)
Meow.create(file_name: 'meow12.mp3', cat: true)
Meow.create(file_name: 'meow13.mp3', cat: false)
Meow.create(file_name: 'meow14.mp3', cat: false)
Meow.create(file_name: 'meow15.mp3', cat: true)
Meow.create(file_name: 'meow16.mp3', cat: true)
Meow.create(file_name: 'meow17.mp3', cat: false)
Meow.create(file_name: 'meow18.mp3', cat: false)
Meow.create(file_name: 'meow19.mp3', cat: false)
Meow.create(file_name: 'meow20.mp3', cat: true)
Meow.create(file_name: 'meow21.mp3', cat: false)

Image.create(file_name: 'cat1.jpg', cat: true)
Image.create(file_name: 'cat2.jpg', cat: true)
Image.create(file_name: 'cat3.jpg', cat: true)
Image.create(file_name: 'cat4.jpg', cat: true)
Image.create(file_name: 'cat5.jpg', cat: true)
Image.create(file_name: 'cat6.jpg', cat: true)
Image.create(file_name: 'cat7.jpg', cat: true)
Image.create(file_name: 'cat8.jpg', cat: true)
Image.create(file_name: 'cat9.jpg', cat: true)
Image.create(file_name: 'cat10.jpg', cat: true)
Image.create(file_name: 'cat11.jpg', cat: true)
Image.create(file_name: 'cat12.jpg', cat: true)
Image.create(file_name: 'cat13.jpg', cat: true)
Image.create(file_name: 'cat14.jpg', cat: true)
Image.create(file_name: 'cat15.jpg', cat: true)
Image.create(file_name: 'cat16.jpg', cat: true)
Image.create(file_name: 'cat17.jpg', cat: true)
Image.create(file_name: 'cat18.jpg', cat: true)
Image.create(file_name: 'cat19.jpg', cat: true)
Image.create(file_name: 'cat20.jpg', cat: true)
Image.create(file_name: 'cat21.jpg', cat: true)
Image.create(file_name: 'cat22.jpg', cat: true)
Image.create(file_name: 'cat23.jpg', cat: true)


Image.create(file_name: 'human1.jpg', cat: false)
Image.create(file_name: 'human2.jpg', cat: false)
Image.create(file_name: 'human3.jpg', cat: false)
Image.create(file_name: 'human4.jpg', cat: false)
Image.create(file_name: 'human5.jpg', cat: false)
Image.create(file_name: 'human6.jpg', cat: false)
Image.create(file_name: 'human7.jpg', cat: false)
Image.create(file_name: 'human8.jpg', cat: false)
Image.create(file_name: 'human9.jpg', cat: false)
Image.create(file_name: 'human10.jpg', cat: false)
Image.create(file_name: 'human11.jpg', cat: false)
Image.create(file_name: 'human12.jpg', cat: false)
Image.create(file_name: 'human13.jpg', cat: false)
Image.create(file_name: 'human14.jpg', cat: false)
Image.create(file_name: 'human15.jpg', cat: false)
Image.create(file_name: 'human16.jpg', cat: false)
Image.create(file_name: 'human17.jpg', cat: false)
Image.create(file_name: 'human18.jpg', cat: false)
Image.create(file_name: 'human19.jpg', cat: false)
