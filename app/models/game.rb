class Game < ActiveRecord::Base
  attr_accessible :name, :description, :active
  validates_uniqueness_of :name
end
