class CLI

  def initialize(instream, outstream, secret_code = nil)
    @instream = instream
    @outstream = outstream
    @secret_code = secret_code
  end

  def call

  end
end

# start_sequence
#   print welcome message
#   print option to play, to look at instructions, to quit
#   if they choose play, print what colors they can choose and that they have the option to quit
#     at any time
#   ask for their guess
#   downcase guess
#   check if player wants to play
#   call game class play method
#   if player wants instructions
#   print instructions
#   if player wants to quit
#   print endgame message
#   otherwise print invalid input



# method to evaluate the guess
#     call method from input to check guess against random sequence
#     call method from input to check weather input is too long/short
#     give back approprate feedback(number of correct elements and position)
#   end_game_sequence
#     method for a correct guess
#     print win message
#     print time
#     print sequence they guessed
#     give the option to play again or quit
#     print how many guesses it took
#
