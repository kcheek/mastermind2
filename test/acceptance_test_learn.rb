gem 'minitest'
require 'minitest/autorun'
require 'minitest/spec'


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

class TestFakeStdin < Minitest::Spec
  it 'gets each of its inputs in order, returning `nil` once it runs out' do
    fake_stdin = FakeStdin.new("a\n", "b\n")
    assert_equal "a\n", fake_stdin.gets
    assert_equal "b\n", fake_stdin.gets
    assert_equal nil,   fake_stdin.gets
  end
end

class FakeStdout

  def printed
    @printed || @printed = []
  end

  def puts(message)
    printed << message
  end

end

class TestFakeStdout < Minitest::Spec
  it 'records everything printed' do
    fake_stdout = FakeStdout.new
    assert_equal [], fake_stdout.printed

    fake_stdout.puts "a"
    assert_equal ['a'], fake_stdout.printed

    fake_stdout.puts "b"
    assert_equal ['a', 'b'], fake_stdout.printed
  end
end
