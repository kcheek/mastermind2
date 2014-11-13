class Display

  def welcome_message
    "\n
    Welcome to Mastermind!
    \n\n"
  end

  def welcome_instructions
    "type 'p' or 'play' to play,
     'i' or 'instructions' for instructions,
     'q'or 'quit' to quit"
  end

  def instructions
    "If you're looking for instructions you've come to the right place.
      The computer will randomly select four colors for you to guess.  The colors are (r)ed,
      (b)lue, (g)reen, and (y)ellow.  There may be duplicates, or only one of each.  Your mission
      is to determine the computer's combination by inputing any combination of the four colors
      listed above.  Good luck!"
  end

  def input_command_prompt
    "\nplease input a command:"
  end

  def game_play_instructions
    "\nGuess the four color secret sequence.
    You can input 'r' for red, 'b' for blue, 'g' for green, and 'y' for yellow.
    You can use any sequence and any number of each colors up to four."
  end

  def input_guess_prompt
    "\nplease input a guess:"
  end

  def number_of_guesses(turn)
    "You have made #{turn} guesses."
  end

  def invalid_input
    "Your input is invalid."
  end

  def winner(turn)
    "\nYou've won!  Congratulations!
    It took you #{turn} guesses to complete the game."
  end

  def time(minutes_time, seconds_time)
    "It took you #{minutes_time} minutes and #{seconds_time} seconds to complete your game."
  end

  def end_game_prompt
    "\nDo you want to play again or quit?"
  end

  def goodbye_message
    "\n
    Goodbye, and have a lovely day!
    \n"
  end

  def guess_stats(guess_stats)
    "You guessed #{guess_stats.guessed_colors}.
    You have #{guess_stats.correct_color} correct colors
    with #{guess_stats.correct_spot_and_color} in the correct spot."
  end
end
