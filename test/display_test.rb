require_relative 'test_helper'

class DisplayTest < Minitest::Test

  def test_it_prints_welcome_message
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.welcome_message, "Welcome to Mastermind!"
  end

  def test_it_prints_welcome_instructions
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.welcome_instructions, "type 'p'or 'play' to play,
    'i' or 'instructions' for instructions,
    'q'or 'quit' to quit"
  end

  def test_it_prints_instructions
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.instructions, "FIXME :D"
  end

  def test_it_prints_input_command_prompt
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.input_command_prompt, "please input a command:"
  end

  def test_it_prints_game_play_instructions
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.game_play_instructions, "Guess the four color secret sequence.
    You can input 'r' for red, 'b' for blue, 'g' for green, and 'y' for yellow.
    You can use any sequence and any number of each colors up to four."
  end

  def test_it_prints_input_guess_prompt
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.input_guess_prompt, "please input a guess:"
  end

  def test_it_prints_correct_color
    skip
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.correct_color(2), "You have #{number} color correct."
  end

  def test_it_prints_correct_position
    skip
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.correct_position(2), "You have #{number} in the correct spot."
  end

  def test_it_prints_number_of_guesses
    skip
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.number_of_guesses(1), "You have made #{turn} guesses."
  end

  def test_it_prints_too_many_characters
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.too_many_characters, "You have entered too many characters."
  end

  def test_it_prints_too_few_characters
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.too_few_characters, "FIXME :D"
  end

  def test_it_prints_invalid_input
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.invalid_input, "FIXME :D"
  end

  def test_it_prints_winner
    skip
    stdout = FakeStdout.new
    display = Display.new(stdout)
    assert_includes display.winner(guesses), "You've won!  Congratulations!
    It took you #{fixme :D} guesses to complete the game."
  end

  def test_it_prints_end_game_prompt
      stdout = FakeStdout.new
      display = Display.new(stdout)
      assert_includes display.end_game_prompt, "Do you want to play again or quit?"
  end

  def test_it_prints_goodbye_message
      stdout = FakeStdout.new
      display = Display.new(stdout)
      assert_includes display.goodbye_message, "Goodbye, and have a lovely day!"
  end

end
