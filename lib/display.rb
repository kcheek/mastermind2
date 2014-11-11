class Display

  def initialize(outstream)
    @outstream = outstream
  end

  def welcome_message
    @outstream.puts "Welcome to Mastermind!"
  end

  def welcome_instructions
    @outstream.puts "type 'p'or 'play' to play,
    'i' or 'instructions' for instructions,
    'q'or 'quit' to quit"
  end

  def instructions
    @outstream.puts "FIXME :D"
  end

  def input_command_prompt
    @outstream.print "please input a command:"
  end

  def game_play_instructions
    @outstream.puts"Guess the four color secret sequence.
    You can input 'r' for red, 'b' for blue, 'g' for green, and 'y' for yellow.
    You can use any sequence and any number of each colors up to four."
  end

  def input_guess_prompt
    @outstream.print "please input a guess:"
  end

  def correct_color(number)
    @outstream.puts "You have #{number} color correct."
  end

  def correct_position(number)
    @outstream.puts "You have #{number} in the correct spot."
  end

  def number_of_guesses(turn)
    @outstream.puts "You have made #{turn} guesses."
  end

  def too_many_characters
    @outstream.puts "You have entered too many characters."
  end

  def too_few_characters
    @outstream.puts "FIXME :D"
  end

  def invalid_input
    @outstream.puts "FIXME :D"
  end

  def winner(turn)
    @outstream.puts "You've won!  Congratulations!
    It took you #{fixme :D} guesses to complete the game."
  end

  def end_game_prompt
    @outstream.print "Do you want to play again or quit?"
  end

  def goodbye_message
    @outstream.puts "Goodbye, and have a lovely day!"
  end

end
