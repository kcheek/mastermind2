require_relative 'test_helper'

class TestInputValidity < Minitest::Test
  def test_it_accepts_good_input
    good_input = Input.new("rrrr")
    refute good_input.invalid_input?
    refute good_input.input_too_long?
    refute good_input.input_too_short?
  end

  def test_it_rejects_invalid_input
    bad_input = Input.new("xrrr")
    assert bad_input.invalid_input?
  end

  def test_it_accepts_quit
    good_input = Input.new("quit")
    refute good_input.invalid_input?
  end

  def test_it_rejects_input_that_is_too_long
    bad_input = Input.new("rrrrr")
    assert bad_input.input_too_long?
  end

  def test_it_rejects_input_that_is_too_short
    bad_input = Input.new("rrr")
    assert bad_input.input_too_short?
  end
end
