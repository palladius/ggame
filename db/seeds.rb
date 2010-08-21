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
User.delete(User.find_by_username 'root') # recreate..
User.delete(User.find_by_username 'rcarlesso') # recreate..
root = User.create( 
  :username => 'root',
  :email => 'riccardo.carlesso@example.com',
  :score => 100,
  :password => 'rootpwd_CHANGEME',
  :level => 2
)
root.level = 2   # cant do it by create
root.score = 4242 # ditto..
root.save

author = User.create( 
  :username => 'rcarlesso',
  :email => 'palladius@example.com',
  :score => 10,
  :password => 'r1cc4rd0_P455W0R0',
  :level => 1
)
author.level = 1   # cant do it by create
author.score = 42  # ditto..
author.save
#author.save
#puts author.errors.inspect




puts "Database Seeded!"