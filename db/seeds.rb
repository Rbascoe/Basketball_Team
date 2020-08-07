# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BasketballTeam.destroy_all
Player.destroy_all

wizards = BasketballTeam.create(city_name: "Washington", team_name: "Wizards", team_colors: "Red, White, and Blue", no_of_championships: 1)
bulls = BasketballTeam.create(city_name: "Chicago", team_name: "Bulls", team_colors: "Red, Black", no_of_championships: 6)
heat = BasketballTeam.create(city_name: "Miami", team_name: "Heat", team_colors: "Red, White, and Black", no_of_championships: 3)


Player.create(name: "John Wall", number: 2, basketball_team_id: wizards.id)
Player.create(name: "Bradley Beal", number: 3, basketball_team_id: wizards.id)
Player.create(name: "Zach Lavine", number: 0, basketball_team_id: bulls.id)
Player.create(name: "Jimmy Butler", number: 13, basketball_team_id: heat.id)
Player.create(name: "Tyler Herro", number: 14, basketball_team_id: heat.id)
Player.create(name: "Goran Dragic", number: 20, basketball_team_id: heat.id)