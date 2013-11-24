# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Place.create! id: 1, name: "beach"
Place.create! id: 2, name: "ocean"
Place.create! id: 3, name: "cave"

Trail.create! from_place_id: 1, direction: "west", to_place_id: 2
Trail.create! from_place_id: 2, direction: "east", to_place_id: 1
Trail.create! from_place_id: 1, direction: "east", to_place_id: 3
