class Input
  attr_reader :input,
              :secret_sequence

  def initialize(input, secret_sequence)
    @input           = input
    @secret_sequence = secret_sequence
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

  def win?
    secret_sequence == @input
  end

end
