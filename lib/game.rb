# outstream.puts display.welcome_message
class Game
  attr_reader :instream, :outstream, :display, :secret_sequence, :colors, :turn_indicator, :time, :input

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
      turn_indicator
      outstream.print display.input_guess_prompt
      @input = Input.new(instream.gets.strip.downcase)
      if input.quit?
        outstream.puts display.goodbye_message
        break
      elsif input.improper_input_length?
        outstream.puts display.invalid_input
      elsif input.invalid_input?
        outstream.puts display.invalid_input
      elsif win?
        increment_turn
        total_time
        outstream.puts display.time(minutes_time, seconds_time)
        outstream.puts display.guess_stats(guess_stats)
        outstream.print display.end_game_prompt
        break
      else
        turn_indicator
        outstream.puts display.guess_stats(guess_stats)
      end
    end
  end

  def total_time
    @total_time = (Time.now - @start_time).to_i
  end

  def minutes_time
    @minutes_time = total_time / 60
  end

  def seconds_time
    @seconds_time = total_time % 60
  end

  def win?
    secret_sequence == @input
  end

  def increment_turn
    @turn_indicator += 1
  end

  def guess_stats
    @guess_stats = GuessStats.new(secret_sequence, input.input)
  end

end
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
      # otherwise
        # increment turn
        # check correct_spot_and_color
        # check correct_color
        # display guess stats(NEED TO ADD TO DISPLAY CLASS)

# game = Game.new(['r','r','b','b'], display)
# game.play
