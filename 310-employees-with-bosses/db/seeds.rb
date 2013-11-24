# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Employee.create! name: "Fred", employee_boss_id: nil
Employee.create! name: "Sal", employee_boss_id: 1
Employee.create! name: "Phil", employee_boss_id: 1
Employee.create! name: "Jim", employee_boss_id: 2
