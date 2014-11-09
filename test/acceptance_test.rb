gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/cli'

class AcceptanceTest < Minitest::Test
  class FakeStdin
    def initialize(*inputs)
      @inputs = inputs         # => ["a\n", "b\n"]
      @index = 0               # => 0
    end

    def gets
      input = @inputs[@index]  # => "a\n", "b\n", nil
      @index += 1              # => 1, 2, 3
      input                    # => "a\n", "b\n", nil
    end
  end

  class FakeStdout

    def printed
      @printed || @printed = []  # => [], [], ["a"], ["a"], ["a", "b"]
    end

    def puts(message)
      printed << message         # => ["a"], ["a", "b"]
    end

  end

  def test_acceptance
    stdin  = FakeStdin.new("p\n", "rrrr\n", "rrggg\n", "rrgg\n", "rrgb\n", "quit\n")
    stdout = FakeStdout.new
    cli    = CLI.new(stdin, stdout, "rrgb")

    # > ruby mastermind.rb
    cli.call
    # greets user
    assert_includes stdout.printed, "Welcome to Mastermind!"

    # informs user of their options
    assert_includes stdout.printed, "type 'p'or 'play' to play,"

    # prompts for a command (p)
    assert_includes stdout.printed, "please input a command: "

    # prompts for color
    assert_includes stdout.printed, "Guess the four color secret sequence."

    # prompts for a guess (rrrr)
    assert_includes stdout.printed, "please input a guess: "

    # tells us the correct number
    assert_includes stdout.printed, "You have 1 color correct."
    assert_includes stdout.printed, "You have 2 in the correct spot."

    # tells us how many we guessed
    assert_includes stdout.printed, "You have made 1 guess."

    # identifies the incorrect guess (rrggg)
    assert_includes stdout.printed, "You have entered too many characters."

    # takes another guess
    assert_includes stdout.printed, "You have made 2 guesses."

    # identifies the win (rrgb)
    assert_includes stdout.printed, "You've won!  Congratulations!"

    # tells us how many guesses it took
    assert_includes stdout.printed, "It took you 3 guesses to complete the game."

    # allows us to play again if we like
    assert_includes stdout.printed, "Do you want to play again or quit? "

    # bids us farewell
    assert_includes stdout.printed, "Goodbye, and have a lovely day!"
  end
end
