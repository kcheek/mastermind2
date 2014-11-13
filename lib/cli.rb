class CLI
  attr_reader :instream,
              :outstream,
              :secret_sequence,
              :user_guess,
              :display

  def initialize(instream, outstream, secret_sequence = nil)
    @instream        = instream
    @outstream       = outstream
    @secret_sequence = secret_sequence
    @display         = Display.new
    @user_guess      = ""
  end

  def call
    outstream.puts display.welcome_message
    outstream.puts display.welcome_instructions
    until quit?
      outstream.print display.input_command_prompt
      @user_guess = instream.gets.strip.downcase
    case
    when play?         then Game.new(instream, outstream, secret_sequence).play
    when instructions? then outstream.puts display.instructions
    when quit?         then outstream.puts display.goodbye_message
    else
        outstream.puts display.invalid_input
      end
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
