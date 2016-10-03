############################################## Pseudocode #######################
###### 1) One user can enter a word (or phrase, if you would like your game to
#         support that), and another user attempts to guess the word.
#------------
#
# word_to_guess
#
###### 2) Guesses are limited, and the number of guesses available is related
#         to the length of the word.
#------------
# guesses_allowed (three less than word_to_guess.length)
#

###### 3) Repeated guesses do not count against the user.
#------------
# if someone guesses the same letter twice, there's no penalty



###### 4) The guessing player receives continual feedback on the current state
#         of the word. So if the secret word is "unicorn", the user will start
#         out seeing something like
#         "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user
#         enters a guess of "c".
#------------
#game_board should continually update with any new letters matched




###### 5) The user should get a congratulatory message if they win, and a
#         taunting message if they lose.
#------------
#congratulations if they win, asshat if they don't
#win?
############################################## Class Code #######################
class Wordgame
  attr_reader :game_board
  attr_reader :game_outcome

  def initialize
    @word_to_guess = ""
    @num_guesses_allowed = (@word_to_guess.length)-3
    @game_board = @word_to_guess.lenth {|x| x*_}
    @game_over = false
  end

  def 

end


############################################## Driver Code #######################
puts "Welcome to the Game! Player 1 - type in the word you want player 2 to guess."
@word_to_guess = gets.chomp

































