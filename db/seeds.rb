# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Remet la base de donée a 0
User.destroy_all
Course.destroy_all

#boucle pour faire des fakes random
5.times do
  #Random de course
  Course.create!(name: Faker::Name.name)
  5.times do
    #Random d'user
    User.create!(name: Faker::Name.name, course_id: Course.last.id)
  end
end
