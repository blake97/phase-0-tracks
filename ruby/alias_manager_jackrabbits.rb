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

#reference
vowels = "aeiou"
consonants = "abcdefghijklmnopqrstuvwxyz".delete("#{vowels}")
transformed_array =[]

# get name, downcase, split string into wors, reverse word order, rejoin 
# words into one string.
puts "enter your name"
input_name = gets.chomp.downcase
reverse_name = input_name.split(' ').reverse.join(' ')

#break into characters. 
p characters_array = reverse_name.chars

#loop through resulting array, determine appropriate reference strand, 
# create next value. Take care of spaces and end-of-reference string cases.

characters_array.map! do |char|
  if char == ' '
    next_char = ' '
  elsif char == 'u'
    next_char = 'a'
  elsif char == 'z'
    next_char ='b'
  elsif consonants.include?(char)
    next_consonant_ref_index = consonant.index(char)+1
    next_char = consonant[next_consonant_ref_index]
  elsif vowels.include?(char)
    next_vowel_ref_index = vowel.index(char)+1
    next_char = vowel[next_vowel_ref_index]
  end
transformed_array = transformed_array.push(next_char)
end

puts transformed_array





#code working on








##### Driver Code



puts vowels
puts consonants