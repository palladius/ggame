class Match < ActiveRecord::Base
  attr_accessible :game_id, :match_start, :match_end, :notes, :title, :final_score, :winner_id, :participants
  validates_uniqueness_of :title
  
  belongs_to :game
  belongs_to :user # , :thru => 
  
  def winner
    User.find(winner_id) rescue nil
  end
  
  # participants: "1,2,3"
  #  => User.1 , User.2, User.3
  def arr_participants
    participants.split(',').map{|id|
      User.find(id) rescue nil
    }
  end
  
  def to_s
    title
  end
end
