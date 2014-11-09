class Display

  def initialize(stdout)
    @stdout = stdout
  end

  def welcome_message
    @stdout.puts "Welcome to Mastermind!"
  end

  def welcome_instructions
    @stdout.puts "type 'p'or 'play' to play,
    'i' or 'instructions' for instructions,
    'q'or 'quit' to quit"
  end

  def instructions
    @stdout.puts "FIXME :D"
  end

  def input_command_prompt
    @stdout.puts "please input a command:"
  end

  def gam_play_instructions
    @stdout.puts"Guess the four color secret sequence.
    You can input 'r' for red, 'b' for blue, 'g' for green, and 'y' for yellow.
    You can use any sequence and any number of each colors up to four."
  end

  def input_guess_prompt
    @stdout.puts "please input a guess: rrrr"
  end

  def correct_color
    @stdout.puts "You have 1 color correct."
  end

  def correct_position
    @stdout.puts "You have 2 in the correct spot."
  end

  def number_of_guesses
    @stdout.puts "You have made 1 guess."
  end

  def too_many_characters
    @stdout.puts "You have entered too many characters."
  end

  def too_few_characters
    @stdout.puts
  end

  def invalid_input
    @stdout.puts
  end

  def winner
    @stdout.puts "You've won!  Congratulations!
    It took you 3 guesses to complete the game."
  end

  def end_game_prompt
    @stdout.puts "Do you want to play again or quit? quit"
  end

  def goodbye_message
    @stdout.puts "Goodbye, and have a lovely day!"
  end

end
