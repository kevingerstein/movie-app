# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'ffaker'

# 10.times do 
#   Actor.create({first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Job.title})
# end

5.times do
  Movie.create(title: FFaker::Movie.title, year: FFaker::Vehicle.year, plot: FFaker::CheesyLingo.paragraph)
end

5.times do
  Actor.create(title: FFaker::Name.first_name, year: FFaker::Name.last_name, known_for: FFaker::CheesyLingo.paragraph)
end







