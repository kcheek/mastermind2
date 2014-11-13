require_relative 'test_helper'

class DisplayTest < Minitest::Test

  def test_it_prints_welcome_message
    display = Display.new
    message = display.welcome_message
    assert message.include?("Mastermind!")
  end

  def test_it_prints_welcome_instructions
    display = Display.new
    message = display.welcome_instructions
    assert message.include?("type 'p' or 'play' to play")
  end

  def test_it_prints_instructions
    display = Display.new
    message = display.instructions
    assert message.include?("instructions")
  end

  def test_it_prints_input_command_prompt
    display = Display.new
    message = display.input_command_prompt
    assert message.include?("input a command:")
  end

  def test_it_prints_game_play_instructions
    display = Display.new
    message = display.game_play_instructions
    assert message.include?("Guess the four color secret")
    end

  def test_it_prints_input_guess_prompt
    display = Display.new
    message = display.input_guess_prompt
    assert message.include?("input a guess:")
  end
  
  def test_it_prints_number_of_guesses
    display = Display.new
    message = display.number_of_guesses(1)
    assert message.include?("You have made 1 guesses.")
  end

  def test_it_prints_invalid_input
    display = Display.new
    message = display.invalid_input
    assert message.include?("invalid")
  end

  def test_it_prints_winner
    display = Display.new
    message = display.winner(8)
    assert message.include?("You've won!")
  end

  def test_it_prints_end_game_prompt
      display = Display.new
      message = display.end_game_prompt
      assert message.include?("Do you want to play again")
  end

  def test_it_prints_goodbye_message
      display = Display.new
      message = display.goodbye_message
      assert message.include?("Goodbye, and have a lovely day!")
  end

end
