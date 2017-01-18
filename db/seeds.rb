# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


copywriting = Category.where(name: "Copywriting").first_or_create(name: "Copywriting")
webdesign = Category.where(name: "Web Design").first_or_create(name: "Web Design")
webdevelopment = Category.where(name: "Web Development").first_or_create(name: "Web Development")
appdevelopment = Category.where(name: "App Development").first_or_create(name: "App Development")
leadgeneration = Category.where(name: "Lead Generation").first_or_create(name: "Lead Generation")
