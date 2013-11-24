# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Photo.create! id: 1, name: "Flatirons at Dawn"
Photo.create! id: 2, name: "Flatirons at Sunset"
Photo.create! id: 3, name: "Sunset from My Window"
Photo.create! id: 4, name: "Mysterious Blur"
Tag.create! id:1, name: "Flatirons"
Tag.create! id:2, name: "dawn"
Tag.create! id:3, name: "sunset"
Tag.create! id:4, name: "Pluto"
Photo.find(1).tag_ids = [1,2]
Photo.find(2).tag_ids = [1,3]
Photo.find(3).tag_ids = [3]
