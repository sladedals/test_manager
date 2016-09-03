# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Status.delete_all
TestCase.delete_all

UNDEF=Status.create(name:"undefined")
PASSED=Status.create(name:"passed")
FAILED=Status.create(name:"failed")

TestCase.create(title:"test1", status:UNDEF)
TestCase.create(title:"test2", status:UNDEF)
TestCase.create(title:"test3", status:PASSED)
TestCase.create(title:"test4", status:FAILED)
