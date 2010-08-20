# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)


##### GAMES
#Game.delete_all # uniqueness on name guarantees unicity :)
Game.create(
  :name => 'chess',
  :description => 'Ill try to implement the full game of chess, although I dont guarantee..'
)
Game.create(
  :name => 'checque',
  :description => 'Similar to chess, but simpler.'
)
Game.create(
  :name => 'four in a row',
  :description => 'You have to fill 4 of your color (diagonal, horizontal, vertical) before your foe does the same!'
)

##### USERS
u = User.create( 
  :username => 'root',
  :email => 'riccardo.carlesso@gmail.com',
  :score => 100,
  :level => 1
)
puts u




puts "Database Seeded!"