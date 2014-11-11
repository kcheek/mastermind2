class Game
  attr_reader :stdin, :display, :secret_sequence, :colors, :turn_indicator  # => nil

  def initialize(stdin, display)
    @stdin = stdin                                   # => ["r", "r", "b", "b"]
    @display = display                               # => nil
    @turn_indicator = 0                              # => 0
    @colors = ['r','g','b','y']                      # => ["r", "g", "b", "y"]
    @secret_sequence = (0..3).map { colors.sample }  # => ["r", "b", "b", "y"]
  end

  def play
                                   # => 2
  end

  def turn_indicator
    @turn_indicator
  end

end

game = Game.new(['r','r','b','b'], display)  # => #<Game:0x007fd363805a00 @stdin=["r", "r", "b", "b"], @display=nil, @turn_indicator=0, @colors=["r", "g", "b", "y"], @secret_sequence=["r", "b", "b", "y"]>
game.play                                    # => 2

# game loop
# randomly generate secret_code

# display game intro
# display turn indicator
# display prompt for input
# get input
# check to see if input is quit
  # if display quit message
# check to see if input is too long/short
  # if display is invalid print message
# check to see if wrong characters were inputted
  # if wrong characters inputted print message
# check to see if they won
  # if they won increment turn
  # print win message
  # print number of turns taken
  # print time?
# if none of the above take turn
  # increment turn
  # print guess stats

# check if won
# increment turn
# call on guess stats class


# and ask if they want to play again or quit
# tell user if it's the correct color
# tell user if it's the correct position
# let user guess again

# >> main
