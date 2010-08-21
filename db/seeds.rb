# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

def fatal(str)
  puts "FATAL: #{str}"
  exit 1
end

puts "db/seed.rb: Start"

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
User.delete(User.find_by_username 'root')     # recreate..
User.delete(User.find_by_username 'kasparov') # recreate..
root = User.create( 
  :username => 'root',
  :email => 'riccardo.carlesso@example.com',
  :score => 100,
  :password => 'rootpwd_CHANGEME',
  :level => 2
)
root.level = 2   # cant do it by create
root.score = 4242 # ditto..
root.save || fatal('Couldnt create Root')

kasparov = User.create( 
  :username => 'kasparov',
  :email => 'kasparov@example.com',
  :score => 6,
  :password => 'kasparov_217gdyweh',
  :level => 1
)
kasparov.level = 1   # cant do it by create
kasparov.score = 6  # ditto..
kasparov.save || fatal('Couldnt create Kasparov')

#### Matches (a test one)
Match.delete(Match.find_all_by_title 'Historical Chess match!')
Match.create(
  :game_id => Game.find_by_name('chess').id ,
  :notes   => "Example match between Deep Blue (root here) and Kasparov :)",
  :title   => "Historical Chess match!",
  :final_score => 6,
  :winner_id => kasparov.id,
  :creator_id => root.id,
  :participants => [kasparov.id,root.id].join(',')
)

puts "db/seed.rb: Database Seeded!"