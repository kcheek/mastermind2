# outstream.puts display.welcome_message
class Game
  attr_reader :instream, :outstream, :display, :secret_sequence, :colors, :turn_indicator, :time

  def initialize(instream, outstream)
    @instream = instream
    @outstream = outstream
    @display = Display.new
    @turn_indicator = 0
    @colors = ['r','g','b','y']
    @secret_sequence = (0..3).map { colors.sample }
    @start_time = Time.new
  end

  def play
    outstream.print display.game_play_instructions
    # print game_play_instructions
    loop do
      @turn_indicator
      outstream.print display.input_guess_prompt
      @input = Input.new(instream.gets.strip.downcase)
      if input.quit?
        outstream.print display.goodbye_message
        break
      elsif input.improper_input_length?
        outstream.print invalid_input
      elsif input.invalid_input?
        outstream.print invalid_input
      elsif win?
        
      # print turn_indicator
      # print input_guess_prompt
      # get input input = Input.new(instream.gets.chomp.downcase)
      # check to see if input is quit
        # print goodbye_message

      # check to see if input is too long/too short
        # print too long/too short message
      # check to see if input is invalid characters
        # print invalid characters message
      # check to see if input is a winner
        # increment turn
        # call time
        # print winner
        # print time
        # print turn
        # print guess_stats
        # display end game prompt
        break
      # otherwise
        # increment turn
        # check correct_spot_and_color
        # check correct_color
        # display guess stats(NEED TO ADD TO DISPLAY CLASS)
    end
  end

  def win?
    secret_sequence == @input
  end

  def turn_indicator
    @turn_indicator += 1
  end

end

# game = Game.new(['r','r','b','b'], display)
# game.play
