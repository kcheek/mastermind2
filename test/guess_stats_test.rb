require_relative 'test_helper'

class CorrectSpotTest < Minitest::Test

  def assert_correct_spot(secret_code, guessed_colors, num)
    stats = GuessStats.new(secret_code, guessed_colors)
    assert_equal num, stats.correct_spot_and_color
  end

  def test_how_many_are_in_the_correct_spot_and_color
    assert_correct_spot "bbbb", "bbbg", 3
    assert_correct_spot "bbbb", "bbgg", 2
    assert_correct_spot "bbbb", "bggg", 1
    assert_correct_spot "bbbb", "gggg", 0
    assert_correct_spot "bbbg", "gggb", 0
    assert_correct_spot "bbbb", "bbbb", 4
  end

  def test_it_does_not_accept_invalid_letters
    skip
    assert_correct_spot "bbbb", "bbbx", 0
    assert_correct_spot "bbbb", "xxxx", 0
  end

end

class CorrectColorTest < Minitest::Test

  def assert_correct_color(secret_code, guessed_colors, num)
    stats = GuessStats.new(secret_code, guessed_colors)
    assert_equal num, stats.correct_color
  end

  def test_how_many_are_the_correct_color
    assert_correct_color "byrg", "bbbb", 1
    assert_correct_color "byrg", "gggb", 2
    assert_correct_color "byrg", "ygbg", 3
    assert_correct_color "byrg", "bygr", 4
    assert_correct_color "bbgg", "bggr", 2
    assert_correct_color "bbgg", "ggbb", 2
  end

end
