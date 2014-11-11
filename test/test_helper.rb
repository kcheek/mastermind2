gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/display'
require '../lib/cli'
require '../lib/input'
require '../lib/guess_stats'
require '../lib/game'

class FakeStdin

  def initialize(*inputs)
    @inputs = inputs
    @index = 0
  end

  def gets
    input = @inputs[@index]
    @index += 1
    input
  end
end

class FakeStdout

  def printed
    @printed || @printed = []
  end

  def puts(message)
    printed << message
  end

  def print(message)
    printed << message
  end
end
