# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all

u1 = User.create :first_name => 'Jane', :last_name => 'Doe', :email => 'janedoe@ga.co' 
u2 = User.create :first_name => 'John', :last_name => 'Smith', :email => 'johnsmith@ga.co'
u3 = User.create :first_name =>'Kris', :last_name => 'Wong', :email => 'kris@ga.co'
u4 = User.create :first_name =>'Claire', :last_name => 'Williams', :email => 'claire@ga.co'
u5 = User.create :first_name =>'Ben', :last_name => 'Miller', :email => 'ben@ga.co'
u6 = User.create :first_name =>'Jasmin', :last_name => 'Yusuf', :email => 'jas@ga.co'
u7 = User.create :first_name =>'Shaq', :last_name => 'gif-test', :email => 'shaq@ga.co'
u8 = User.create :first_name => 'Default', :last_name => 'Default', :email => 'test@ga.co'

puts "#{ User.count } users."