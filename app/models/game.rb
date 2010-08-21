class Game < ActiveRecord::Base
  attr_accessible :name, :description, :active
  validates_uniqueness_of :name
  
  def to_s
    name
  end
  
end
