# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Company.create! id: 1, name: "Microsoft"
Company.create! id: 2, name: "IBM"
Company.create! id: 3, name: "Sun"
Employee.create! name: "John", company_id: 1
Employee.create! name: "Jill", company_id: 2
Employee.create! name: "Jack", company_id: 2
Employee.create! name: "Ursula", company_id: nil