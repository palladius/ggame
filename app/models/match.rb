class Match < ActiveRecord::Base
  attr_accessible :game_id, :date_start, :date_end, :notes, :title, :final_score, :winner_id, :participants
end
