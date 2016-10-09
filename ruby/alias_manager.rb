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


stop_word = false
puts "Hello agent. Give me a full name to create your spy alias."

until stop_word
agent_name_input= gets.chomp
  
  if agent_name_input == "quit"
    stop_word= true
  else
    
    #Name Processing: Split, Reverse, Rejoin ________
    name_split= agent_name_input.split(' ')
    reverse_name = name_split.reverse.join(' ')
    
    #change vowels & print name
    vowels (reverse_name)
    puts "\nYour secret name is #{reverse_name}. Please enter another name to create another alias for, or type 'quit' to exit the program."
  end
  results
end
   
 
puts "\n\nThank you for using the agent alias generator. Goodbye."