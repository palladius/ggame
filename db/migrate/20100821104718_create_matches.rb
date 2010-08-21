class CreateMatches < ActiveRecord::Migration
  
  def self.up
    create_table :matches do |t|
      t.integer  :game_id
      t.datetime :match_start,    :default => Time.now  # TODO bug: must be a lambda NOW, not a static NOW!
      t.datetime :match_end
      t.text     :notes
      t.string   :title
      t.integer  :final_score, :default => 10
      t.integer  :winner_id
      t.integer  :creator_id
      t.string   :participants
      t.string   :progress_state, :default => 'INIT'
      t.timestamps
    end
  end
  
  def self.down
    drop_table :matches
  end
end
