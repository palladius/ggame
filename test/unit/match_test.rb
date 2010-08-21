require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Match.new.valid?
  end
end
