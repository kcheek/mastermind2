#  DONE
class GuessStats
  attr_reader :secret_code, :guessed_colors

  def initialize(secret_sequence, guessed_colors)
    @secret_sequence = secret_sequence
    @guessed_colors = guessed_colors
    @index = 0
  end

  def correct_spot_and_color
    @correct_count = 0
    4.times do
    @correct_count += 1 if guessed_colors[@index] == @secret_sequence[@index]
    @index += 1
    end
    @correct_count
  end

  def correct_color
    @correct_count = 0
    secret_sequence_duplicate = @secret_sequence.dup
    guessed_colors.each_char do |letter|
      @correct_count += 1 if secret_sequence_duplicate.include?(letter)
      secret_sequence_duplicate.delete!(letter)
    end
    @correct_count
  end
end
