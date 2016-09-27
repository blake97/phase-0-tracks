 # ugly as hell method for swapping vowels only
 def vowels(string)
    index = 0
    until index == string.length
      if string[index]== " "
          string[index]=" " 
        elsif string[index]== "a"
          string[index]="e";
      elsif string[index]== "e"
          string[index]="i"
        elsif string[index]== "i"
          string[index]="o"
        elsif string[index]== "o"
          string[index]="u"
      elsif string[index]== "u"
        string[index]="a"
        elsif string[index]== "A"
          string[index]="E";
      elsif string[index]== "E"
          string[index]="I"
        elsif string[index]== "I"
          string[index]="O"
        elsif string[index]== "O"
          string[index]="U"
      elsif string[index]== "U"
        string[index]="A"  
      else string[index]
      end
      index += 1
    end
  end


puts "Hello, Agent. Give me your full name to create your spy alias."

agent_name_input= gets.chomp

#Name Processing: Split, Reverse, Rejoin ________

#split name on space
name_split= agent_name_input.split(' ')

#reverse resulting array and rejoin on space
reverse_name = name_split.reverse.join(' ')


# <<<<<< ~~~~~~~~~~________ Name Processing: swap vowels ________~~~~~~~~~~  >>>>>> #

#change vowels 
vowels (reverse_name)

#print new agent name
puts reverse_name
 
 

  
  

















