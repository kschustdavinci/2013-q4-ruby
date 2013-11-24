# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Actor.create! id: 1, name: "Fred"
Actor.create! id: 2, name: "Lynne"
Actor.create! id: 3, name: "Cathy"
Play.create!  id: 1, title: "Macbeth"
Play.create!  id: 2, title: "Twelfth Night"
Play.create!  id: 3, title: "Hamlet"
Role.create!  role_name: "Macbeth", actor_id: 1, play_id: 1
Role.create!  role_name: "Lady Macbeth", actor_id: 2, play_id: 1
Role.create!  role_name: "Viola", actor_id: 2, play_id: 2
Role.create!  role_name: "Hamlet", actor_id: nil, play_id: 3