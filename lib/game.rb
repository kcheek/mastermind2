class Game
  attr_reader :instream, :outstream, :display, :secret_sequence, :colors, :turn_indicator, :time, :input

  def initialize(instream, outstream, secret_sequence)
    @instream = instream
    @outstream = outstream
    @display = Display.new
    @turn_indicator = 0
    @colors = ['r','g','b','y']
    @secret_sequence = secret_sequence || (0..3).map { colors.sample }.join
    @start_time = Time.new
  end

  def play
    outstream.print display.game_play_instructions
    loop do
      outstream.puts display.number_of_guesses(@turn_indicator)
      outstream.print display.input_guess_prompt
      @input = Input.new(instream.gets.strip.downcase, secret_sequence)
      if input.quit?
        outstream.puts display.goodbye_message
        break
      elsif input.improper_input_length?
        outstream.puts display.invalid_input
      elsif input.invalid_input?
        outstream.puts display.invalid_input
      elsif input.win?
        increment_turn
        total_time
        outstream.puts display.winner(@turn_indicator)
        outstream.puts display.time(minutes_time, seconds_time)
        outstream.print display.end_game_prompt
        break
      else
        increment_turn
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
  def increment_turn
    @turn_indicator += 1
  end

  def guess_stats
    @guess_stats = GuessStats.new(secret_sequence, input.input)
  end

end
