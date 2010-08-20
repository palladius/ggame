class Game < ActiveRecord::Base
  attr_accessible :name, :description, :active
end
