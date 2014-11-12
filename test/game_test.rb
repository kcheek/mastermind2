require_relative 'test_helper'

class GameTest < Minitest::Test

  def test_turn_indicator_is_zero
    game = Game.new(nil, nil, nil)
    assert_equal 0, game.turn_indicator
  end

end
