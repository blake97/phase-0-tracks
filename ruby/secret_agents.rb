=begin Pseudocode

until the letter index equals the (length  of a string count +1), the loop runs. *(string.length)*

within the method,  we need to advance each letter forward, using hte fundction of *index.next*

need to use if statement: "if the string index = " ", then the string index is assigned to the space- not an !

program exits
=end




# <<<<<< ~~~~~~~~~~________Encryption________~~~~~~~~~~  >>>>>> #

  def encrypt(string)
    index = 0
    until index == string.length
      if string[index]== " "
          string[index]=" " 
      elsif string[index]== "z"
          string[index]="a"
      else 
        string[index].next
        string[index]=string[index].next
      end
      index += 1
    end
    string
  end

# <<<<<< ~~~~~~~~~~________Decryption________~~~~~~~~~~  >>>>>> #


def decrypt(string)
  reference = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  until index == string.length
      if string[index]== " "
          string[index]=" "
      else 
        alphabet = string[index]
        string[index] #for debug
        reference.index(alphabet) #for debug
        placement = reference.index(alphabet) 
        placement = placement - 1
        string[index] = reference[placement]
        end
      index=index+1
  end
 string #implicitly return string value
end     

puts encrypt ("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

puts decrypt(encrypt("swordfish"))
#this returns original input. this is because we are changing and immediately undoing that change prior to returning the result.#
    
    
# <<<<<< ~~~~~~~~~~________ User Interface ________~~~~~~~~~~  >>>>>> #

valid_input=false

puts "hello, would you like to decrypt or encrypt a password?"
until valid_input
  answer = gets.chomp
  case answer
    when "encrypt", "Encrypt","ENCRYPT"
      valid_input=true
      puts "please give me the message to encrypt."
      password=gets.chomp
      puts encrypt(password)
    when "decrypt", "Decrypt", "DECRYPT"
      valid_input=true
      puts "please give me the message to decrypt."
      password=gets.chomp
      puts decrypt(password)
    else
      puts "please answer with 'encrypt' or 'decrypt'"
      valid_input=false
    end
end



