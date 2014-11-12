class CLI
  attr_reader :instream, :outstream, :secret_code, :user_guess, :display

  def initialize(instream, outstream, secret_code = nil)
    @instream = instream
    @outstream = outstream
    @secret_code = secret_code
    @display = Display.new
    @user_guess = ""
  end

  def call
    outstream.puts display.welcome_message
    outstream.puts display.welcome_instructions
    # display welcome_message
    # display welcome_instructions
    until quit?
      outstream.puts display.input_command_prompt
      @user_guess = instream.gets.strip.downcase
      if play?
        Game.new(instream, outstream).play
      elsif instructions?
        outstream.puts display.instructions
      elsif quit?
        outstream.puts display.goodbye_message
      else
        outstream.puts display.invalid_input
      end
    # display input_command_prompt
    # get input, downcase it and chomp it
    # check if input is play
      # go to game file game loop game = Game.new(instream, outstream).play
    # check if input is instructions
      # display instructions
    # check if input is quit
      # display goodbye_message
    # otherwise print invalid_input
    end
  end

  def quit?
    @user_guess == 'q' || @user_guess == 'quit'
  end

  def instructions?
    @user_guess == 'i' || @user_guess == 'instructions'
  end

  def play?
    @user_guess == 'p' || @user_guess == 'play'
  end

end

#- start_sequence
#-   print welcome message
#-   print option to play, to look at instructions, to quit
#-   ask for their guess
#-   downcase guess
#-   check if player wants to play
#-   call game class play method
#-   if player wants instructions
#-   print instructions
#-   if player wants to quit
#-   print endgame message
#-   otherwise print invalid input
