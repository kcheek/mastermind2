class CLITest < Minitest::Test

  # def test_it_calls_welcome_message
  #
  # end
  #
  # def test_it_calls_welcome_instructions
  #
  # end

  def test_it_accepts_various_input_before_starting_game
    skip
    stdin = FakeStdin.new("i\n", "p\n", "q\n")
    stdout = FakeStdout.new
    cli = CLI.new(stdin, stdout, "rrgb")
    assert_includes stdout.printed, "i"
    assert_includes stdout.printed, "p"
    assert_includes stdout.printed, "q"
  end

  def test_it_accepts_player_sequence
    skip
    stdin = FakeStdin.new("rrrr", "bbbb", "gbry")
    stdout = FakeStdout.new
    cli = CLI.new(stdin, stdout, "rrgb")
    assert_includes stdout.printed, "rrrr"
    assert_includes stdout.printed, "bbbb"
    assert_includes stdout.printed, "gbry"
  end

  def test_it_is_case_insensitive
    skip
    stdin = FakeStdin.new("RRRR", "RgbY", "yyyy")
    stdout = FakeStdout.new
    cli = CLI.new(stdin, stdout, "rrgb")
    assert_includes stdout.printed, "rrrr"
    assert_includes stdout.printed, "rgby"
    assert_includes stdout.printed, "yyyy"
  end

  # def test_it_plays_game
  #
  # end
  #
  # def test_it_quits_during_game
  #
  # end
  #
  # def test_it_prints_endgame_message_when_player_wins
  #
  # end
  #
  # def test_it_prints_invalid_message_when_input_is_invalid
  #
  # end
  #
  # def test_it_prints_time_after_win
  #
  # end
  #
  # def test_it_prints_number_of_turns
  #
  # end
  #
  # def test_it_allows_player_to_play_again_after_win
  #
  # end
  #
end
