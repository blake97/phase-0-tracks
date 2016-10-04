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
  attr_reader :game_board :game_outcome :num_guesses_allowed
  attr_accessor :word_to_guess


  def initialize
    @word_to_guess = nil
    @num_guesses_allowed = (@word_to_guess.length)-3
    @game_board = @word_to_guess.lenth {|x| x*"_"}
  end


  def split_word
    @letters =@word_to_guess.split('')
  end


  def current_try (letter_guess)
    until current_guess == @num_guesses_allowed
      if @letters.times.map! do |x| include?'#letter_guess'
          @game_board[x] = current_guess
          puts "You found a letter! #BOOM!!! Here's your updated Board: #{@game_board}"
          if @game_board = word_to_guess
            puts "YOU WIN! You so smaaaarrrrttttt!"
            exit
          end
        end
      else @letters.each {|x| !include?'#letter_guess'}
        puts "Nope... not a letter. Womp. The current game board is still #{{@game_board}}"
        puts "Please select another letter. This is #{current_guess} of #{@num_guesses_allowed}"
        current_guess +=1
      end
    end
    puts "You loose. Peace out... oh, and the word was @word_to_guess, dummy."
    exit
  end
end


############################################## Driver Code #######################
puts "Welcome to the Game!"
game = Wordgame.new

puts "Player 1 - type in the word you want player 2 to guess."
@word_to_guess = gets.chomp


puts "Great. That's a #{word_to_guess.length}-letter-long word, so player 2 gets
#{num_guesses_allowed} guesses allowed!"

puts "Player 1. Please make your first guess and hit enter."
current_guess = 1
letter_guess = gets.chomp.to_s
letter_guess.current_try(letter_guess)



