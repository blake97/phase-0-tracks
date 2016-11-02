#### Class Code ####

class Game
  attr_reader :player1, :player2, :guesses_remaining, :previously_guessed, :working_arr
  attr_accessor  :board_arr

  def initialize(player1, word_to_guess, player2)
    @player1 = player1
    @player2 = player2
    @word = word_to_guess.downcase
    @length = @word.length
    @board_arr = @word.split("")
    @working_arr = []
    @guesses_remaining = (@length*0.85).to_i
    @previously_guessed =[]
  end

def print_checkup


  def create_the_board
    @working_arr = Array.new(@length," _ ")
  end


  def make_a_guess(letter_guessed)
    if @previously_guessed.include?(letter_guessed)
      puts "You already guessed this. Try another one."
    else
      @board_arr.each_with_index do |letter,i|
        if letter_guessed == letter
          @working_arr[i] = (" " + letter + " ")
        end
      end
      @previously_guessed << letter_guessed
      @guesses_remaining -=1
    end
  end

  def end_game
    if @working_arr.join('').delete(' ').split('') == @board_arr
      puts "CONGRATS #{@player2}, YOU WIN !!!" #<------------------------- exit program
    else
      puts "YOU LOSE! Don't stress too much... maybe #{@player1} will hire you one day?  ;)"
    end
  end
end


#### Driver code ####

#set up the game#
puts "Player 1: please enter your name."
player1 = gets.chomp

puts "Player 2: please enter your name."
player2 = gets.chomp

puts "#{player1}: Make sure the screen is hidden, and type in the word to guess!"
word_to_guess = gets.chomp

game = Game.new(player1, word_to_guess, player2)

game.create_the_board

#draw the playing board.
puts "Hello #{player2}. Below is your playing board. Note how many guesses you have!"


#play the game
until game.guesses_remaining == 0||game.board_arr == game.working_arr.join('').delete(' ').split('')
  #show board, recap guesses left. prompt.
  puts "\nYour updated board is: #{game.working_arr.join('')}"
  puts "\n\nYou have #{game.guesses_remaining} guess(es) left."
  puts "What is your next guess?"

  #make a guess
  letter_guessed = gets.chomp
  game.make_a_guess(letter_guessed)
end

game.end_game
