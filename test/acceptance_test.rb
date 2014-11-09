require_relative 'test_helper'

class AcceptanceTest < Minitest::Test
  
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
