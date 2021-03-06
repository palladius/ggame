class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.integer :score, :default => 0  # The score for a player, initialized to ZERO 
      t.integer :level, :default => 0  # The level for a player, ZERO=normal, >0 = admin... 
      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end
end
