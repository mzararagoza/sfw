# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Fabricate(:admin, :email => 'admin@test.com', :first_name => 'Moises', :last_name => 'Zaragoza')
10.times { 
  Fabricate(:girl) 
  2.times { Fabricate(:note) }
  2.times { Fabricate(:payment) }
}
10.times { 
  Fabricate(:vendor)
  2.times { Fabricate(:expense) }
}
