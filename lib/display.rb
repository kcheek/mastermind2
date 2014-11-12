# ALMOST DONE
class Display

  def welcome_message
    "Welcome to Mastermind!"
  end

  def welcome_instructions
    "type 'p' or 'play' to play,
    'i' or 'instructions' for instructions,
    'q'or 'quit' to quit"
  end

  def instructions
    "FIXME :D"
  end

  def input_command_prompt
    "please input a command:"
  end

  def game_play_instructions
    "Guess the four color secret sequence.
    You can input 'r' for red, 'b' for blue, 'g' for green, and 'y' for yellow.
    You can use any sequence and any number of each colors up to four."
  end

  def input_guess_prompt
    "please input a guess:"
  end

  def correct_color(number)
    "You have #{number} color correct."
  end

  def correct_position(number)
    "You have #{number} in the correct spot."
  end

  def number_of_guesses(turn)
    "You have made #{turn} guesses."
  end

  def too_many_characters
    "You have entered too many characters."
  end

  def too_few_characters
    "FIXME :D"
  end

  def invalid_input
    "FIXME :D"
  end

  def winner(turn)
    "You've won!  Congratulations!
    It took you #{turn} guesses to complete the game."
  end

  def time(minutes_time, seconds_time)
    "It took you #{minutes_time} minutes and #{seconds_time} seconds to complete your game."
  end

  def end_game_prompt
    "Do you want to play again or quit?"
  end

  def goodbye_message
    "Goodbye, and have a lovely day!"
  end

  def guess_stats(guess_stats)
    "You guessed #{guess_stats.guessed_colors}.
    You have #{guess_stats.correct_color} correct elements
    with #{guess_stats.correct_spot_and_color} in the correct position."
  end
end
