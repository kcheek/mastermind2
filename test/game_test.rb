require_relative 'test_helper'

class GameTest < Minitest::Test

  def test_turn_indicator_is_zero
    game = Game.new(stdin, display)
    assert_equal 0, game.play.turn_indicator
  end

  def test_prompts_for_input
    skip
    game = Game.new(stdin, display)
    assert_equal "please input a command", game.play.input_command_prompt
  end

  def test_recieves_input
    skip
    game = Game.new(nil, display)
    refute game.play.input
  end

  def test_check_if_input_is_quit
    skip
    game = Game.new('quit', display)
    assert game.play.input.quit?
  end

  def test_check_if_input_is_too_long_or_short
    skip
    game = Game.new('rrr', display)
    assert game.play.input.improper_input_length?
  end

  def test_check_if_input_is_wrong_characters
    skip
    game = Game.new('eeer', display)
    assert game.play.input.invalid_input?
  end

  def test_check_if_input_matches_secret_code
    skip
    game = Game.new('rrrr', display)
    assert game.play.secret_code
  end

end
