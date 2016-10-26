#### Class Code ####

class Game
  attr_reader :player1, :player2, :guesses_remaining
  attr_accessor
  attr_writer

  def initialize(player1, word_to_guess, player2)
    @player1 = player1
    @player2 = player2
    @word = word_to_guess.downcase
    @length = @word.length
    @board_arr = @word.split("")
    @working_arr = Array.new(@length," _ ")
    @guesses_remaining = @length
  end

  def play_the_game
    previously_guessed = []

    until @guesses_remaining == 0||@board_arr == @working_arr.join('').delete(' ').split('')

      puts "\nYour updated board is: #{@working_arr.join('')}"
      puts "\n\nYou have #{@guesses_remaining} guess(es) left."
      puts "What is your next guess?"

      letter_guessed = gets.chomp

      if previously_guessed.include?(letter_guessed)
        puts "You already guessed this. Try another one."
      else
        @board_arr.each_with_index do |letter,i|
          if letter_guessed == letter
            @working_arr[i] = " " + letter + " "
          end
        end
        previously_guessed << letter_guessed
        @guesses_remaining -=1
      end
    end
    if @working_arr.join('').delete(' ').split('') == @board_arr
      puts "CONGRATS #{player2}, YOU WIN !!!" #<------------------------- exit program
    else
      puts "YOU LOSE! Don't stress too much... maybe #{player1} will hire you one day?  ;)"
    end
  end
end





#### Driver code ####
puts "Player 1: please enter your name."
player1 = gets.chomp

puts "Player 2: please enter your name."
player2 = gets.chomp

puts "Player 1: Make sure the screen is hidden, and type in the word to guess!"
word_to_guess = gets.chomp

#create new game
game = Game.new(player1, word_to_guess, player2)

#draw the playing board.
puts "Hello #{player2}. Below is your playing board. Note how many guesses you have!"


game.play_the_game
