class GuessStats
  attr_reader :secret_code, :guessed_colors

  def initialize(secret_sequence, guessed_colors)
    @secret_sequence = secret_sequence
    @guessed_colors = guessed_colors
    @correct_count = 0
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
    secret_sequence_duplicate = @secret_sequence.dup
    # guessed_colors_array = guessed_colors.chars
    # guessed_colors_array.each do |letter|
    guessed_colors.each do |letter|
      @correct_count += 1 if secret_sequence_duplicate.include?(letter)
      secret_sequence_duplicate.delete(letter)
    end
    @correct_count
  end
end

#
# stats = GuessStats.new(['r','r','b','b'], 'bbbr')
# stats.correct_color
# stats.correct_spot_and_color
#  check input against randomly generated sequence
#  how many are in the correct spot
#  how many are the correct color
#  how many are in the correct spot and color
