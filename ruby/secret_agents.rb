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
        p string[index] #for debug
        p reference.index(alphabet) #for debug
        placement = reference.index(alphabet) 
        placement = placement - 1
        string[index] = reference[placement]
        end
      index=index+1
  end
 string #implicitly return string value
end     






    

   





