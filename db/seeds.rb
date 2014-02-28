# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = Student.create([
	{firstname: "Juan", lastname: "Valdez", github: "coffeeman"},
	{firstname: "Aunt", lastname: "Jemima", github: "sweetlady"},
	{firstname: "Jolly Green", lastname: "Giant", github: "easybeinggreen"},
	{firstname: "Tony", lastname: "Tiger", github: "imgreat"},
	])

studs = Stud.create([
  {firstname: "Juan", lastname: "Valdez", github: "coffeeman"},
  {firstname: "Aunt", lastname: "Jemima", github: "sweetlady"},
  {firstname: "Jolly Green", lastname: "Giant", github: "easybeinggreen"},
  {firstname: "Tony", lastname: "Tiger", github: "imgreat"},
  ])