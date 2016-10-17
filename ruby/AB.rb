

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
      next_consonant_ref_index = consonants.index(char)+1
      next_char = consonants[next_consonant_ref_index]
    elsif vowels.include?(char)
      next_vowel_ref_index = vowels.index(char)+1
      next_char = vowels[next_vowel_ref_index]
    end
    transformed_array = transformed_array.push(next_char)
  end
  puts spy_name = transformed_array.join('')
end

puts "Thank you and have a nice day."