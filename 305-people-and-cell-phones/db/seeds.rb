# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.create! name: "Jill"
Person.create! name: "Jack"
Person.create! name: "Bob"
Phone.create! person_id: 1, serial_num: 12345
Phone.create! person_id: 2, serial_num: 23456
Phone.create! person_id: nil, serial_num: 34567
