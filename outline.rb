Do I need integration tests?
What would they look like for Mastermind?




display
  welcome message
  instructions


game flow
  print welcome message
  print option to play, to look at instructions, to quit
  if they choose play, print what colors they can choose and that they have the option to quit
    at any time
  ask for their guess
  method to evaluate the guess
    call method from input to check guess against random sequence
    call method from input to check weather input is too long/short
    give back approprate feedback(number of correct elements and position)
  method for a correct guess
    print win message
    print time
    print sequence they guessed
    give the option to play again or quit
    print how many guesses it took



  keep track of the randomly generated sequence of colors

game
 randomly generated sequence

input
 check to see if input is too long or short
 downcase input
 check input against randomly generated sequence

compare input sequence with randomly generated sequence
and ask if they want to play again or quit
accept input and differentiate between command
make input case insensitive
identify if guess is too short
identify if guess is too long
identify if guess the correct guess
tell user if it's the correct color
tell user if it's the correct position
let user guess again
