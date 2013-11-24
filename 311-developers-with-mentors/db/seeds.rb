# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Developer.create! id: 1, name: "Ted"
Developer.create! id: 2, name: "Ursula"
Developer.create! id: 3, name: "Rita"
Developer.create! id: 4, name: "Dan"
Developer.create! id: 5, name: "Paula"
Developer.create! id: 6, name: "Phil"
Developer.find(2).mentee_ids = [3, 4]
Developer.find(1).mentee_ids = [3]
Developer.find(5).mentee_ids = [6]
Developer.find(6).mentee_ids = [5]