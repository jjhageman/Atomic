# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[ "It is not enough to be abstinent with other people, you also have to be abstinent alone?",
  "I believe intelligent design should be presented in schools alongside the theories of evolution?",
  "You know what, evolution is a myth. Why aren't monkeys still evolving into humans?"].each do |q|
  Question.create(body: q)
end
