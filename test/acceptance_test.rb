require_relative 'test_helper'

class AcceptanceTest < Minitest::Test

  def test_acceptance
    stdin  = FakeStdin.new("p\n", "rrrr\n", "rrggg\n", "rrgg\n", "rrgb\n", "quit\n")
    stdout = FakeStdout.new
    cli    = CLI.new(stdin, stdout, "rrgb")

    # > ruby mastermind.rb
    cli.call
    # greets user
    assert stdout.array_include?(stdout.printed, "Welcome to Mastermind!")

    # informs user of their options
    assert stdout.array_include?(stdout.printed, "type 'p' or 'play' to play")

    # prompts for a command (p)
    assert stdout.array_include?(stdout.printed, "please input a command:")

    # prompts for color
    assert stdout.array_include?(stdout.printed, "Guess the four color secret sequence.")

    # prompts for a guess (rrrr)
    assert stdout.array_include?(stdout.printed, "please input a guess:")

    # tells us the correct number
    assert stdout.array_include?(stdout.printed, "You have 1 correct colors")
    assert stdout.array_include?(stdout.printed, "with 2 in the correct spot.")

    # tells us how many we guessed
    assert stdout.array_include?(stdout.printed, "You have made 1 guesses")

    # identifies the incorrect guess (rrggg)
    assert stdout.array_include?(stdout.printed, "invalid")

    # takes another guess
    assert stdout.array_include?(stdout.printed, "You have made 2 guesses.")

    # identifies the win (rrgb)
    assert stdout.array_include?(stdout.printed, "You've won!  Congratulations!")

    # tells us how many guesses it took
    assert stdout.array_include?(stdout.printed, "It took you 3 guesses to complete the game.")

    # allows us to play again if we like
    assert stdout.array_include?(stdout.printed, "Do you want to play again or quit?")

    # bids us farewell
    assert stdout.array_include?(stdout.printed, "Goodbye, and have a lovely day!")
  end
end
