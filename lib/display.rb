class Display

  def welcome_message
    "Welcome to Mastermind!"
  end

  def welcome_instructions
    "type 'p'or 'play' to play,
    'i' or 'instructions' for instructions,
    'q'or 'quit' to quit"
  end

  def instructions

  end

  def input_command_prompt
    "please input a command:"
  end

  def gam_play_instructions
    "Guess the four color secret sequence.
    You can input 'r' for red, 'b' for blue, 'g' for green, and 'y' for yellow.
    You can use any sequence and any number of each colors up to four."
  end

  def input_guess_prompt
    "please input a guess: rrrr"
  end

  def correct_color
    "You have 1 color correct."
  end

  def correct_position
    "You have 2 in the correct spot."
  end

  def number_of_guesses
    "You have made 1 guess."
  end

  def too_many_characters
    "You have entered too many characters."
  end

  def too_few_characters

  end

  def invalid_input

  end

  def winner
    "You've won!  Congratulations!
    It took you 3 guesses to complete the game."
  end

  def end_game_prompt
    "Do you want to play again or quit? quit"
  end

  def goodbye_message
    "Goodbye, and have a lovely day!"
  end

end
