# DONE
class Input
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def quit?
    input == 'q' || input == 'quit'
  end

  def instructions?
    input == 'i' || input == 'instructions'
  end

  def play?
    input == 'p' || input == 'play'
  end

  def invalid_input?
    input[/[^rgbyq]/] && input != 'quit'
  end

  def improper_input_length?
    input_too_long? || input_too_short?
  end

  def input_too_long?
    input.length > 4
  end

  def input_too_short?
    input.length < 4
  end

end
