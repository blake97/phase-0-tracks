# <<<<<< ~~~~~~~~~~________ Pseudocode ________~~~~~~~~~~  >>>>>> #
# - take the person's name and down-case it
# - split the string into words within a data structure
# - reverse the data structure
# - join the data structure
# - split out all of the letters
# - create two reference strings, one for vowels and one for consonants.

# - reference the input string at the first character.
# - determine which reference string to reference.
# - loop through the input string and match the letter, changing it to the
#   next value within that reference string.
# - build the string back together


########### Business Methods ###########
#reference




def name_processing (input_name)
  reverse_name = input_name.split(' ').reverse.join(' ')   # <== reverse and break into characters.
  characters_array = reverse_name.chars
end


def spy_name_generation(characters_array)
  #loop through resulting array, determine appropriate reference strand,
  # create next value. Take care of spaces and end-of-reference string cases.
  vowels = "aeiou"
  consonants = "abcdefghijklmnopqrstuvwxyz".delete("#{vowels}")
  transformed_array =[]
  
  characters_array.map! do |char|
    if char == ' '
      next_char = ' '
    elsif char == 'u'
      next_char = 'a'
    elsif char == 'z'
      next_char ='b'
    elsif consonants.include?(char)
      next_consonant_ref_index = consonants.index(char)+1
      next_char = consonants[next_consonant_ref_index]
    elsif vowels.include?(char)
      next_vowel_ref_index = vowels.index(char)+1
      next_char = vowels[next_vowel_ref_index]
    end
    transformed_array = transformed_array.push(next_char)
  end
  spy_name = transformed_array.join('')
end


########### Driver Code ###########


# get name, downcase, split string into wors, reverse word order, rejoin
# words into one string.
puts "Enter your name, or enter 'quit' to exit the program"
input_name = gets.chomp.downcase

loop do
  puts "Your spy name is #{spy_name_generation(name_processing(input_name))}. Enter another name, or type 'quit' and press enter to exit the program."
  input_name = gets.chomp.downcase
  break if input_name == 'quit'
end

puts "Thank you and have a nice day."
