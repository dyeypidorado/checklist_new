# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.create username: "admin", password: "pass.1", password_confirmation: "pass.1", email: "admin@pearlships.com"
Inspector.create username: "inspector1", password: "pass.1", password_confirmation: "pass.1", email: "inspector1@pearlships.com"
