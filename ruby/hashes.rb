# <<<<<< ~~~~~~~~~~________ Pseudocode ________~~~~~~~~~~  >>>>>> #
=begin 
  
  Need to write program to:   
    1) collect data
    2) use keys made of symbols, unless strings are necessary.
    3) Convert any user input to the appropriate data type.
    4)Print the hash back out to the screen when the designer has answered all of the questions.
    
    5)Give the user the opportunity to update a key (no need to loop, once is fine). After all, 
      sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters 
      "decor_theme" (for example), your program should ask for a new value and update the :decor_theme 
      key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.)
      You can assume the user will correctly input a key that exists in your hash.
    6)Print the latest version of the hash, and exit the program.
  
=end
 
# <<<<<< ~~~~~~~~~~________ Collect Data ________~~~~~~~~~~  >>>>>> #
  puts "Hello, please enter your name."
  name = gets.chomp

  puts "\n What is your age?"
    begin
      age = gets.chomp
      age = Integer(age)
    rescue
      print "Please enter an integer number:"
      retry
    end

  puts "\n How many children do you have?"
    begin
      number_children = gets.chomp
      number_children = Integer(number_children)
    rescue
      print "Please enter an integer number:"
      retry
    end

  puts " \n What is your decor theme?"
  theme = gets.chomp

  puts "\n Do you like cats?"

  likes_cats = gets.chomp

# <<<<<< ~~~~~~~~~~________ Packaging Data in a Hash________~~~~~~~~~~  >>>>>> #
  form = {
    name: name,
    age: age,
    number_children: number_children,
    theme: theme,
    likes_cats: likes_cats
  }

# <<<<<< ~~~~~~~~~~________ Print the hash form & edit ________~~~~~~~~~~  >>>>>> #
  puts "\n\nYour client information is listed below. Please read over it for verification.\n\n"
  puts form
  puts "\n\nIf you would like to change a value, please type the variable name to re-enter. 
  Otherwise, type 'none' to continue.\n\n"

  user_edit = gets.chomp

  if user_edit== "name"
    puts "Please enter the correct name."
    name = gets.chomp
    form[:name]=name


  elsif user_edit== "age"
    puts "Plase enter the correct age."
    age = gets.chomp
    form[:age] = age
    

  elsif user_edit =="number_children"
    puts "Please enter the correct number of children"
    number_children =gets.chomp
    form[:number_children]= number_children
    
  elsif user_edit == "theme"
    puts "Please enter the correct decor theme."
    theme = gets.chomp
    form[:theme]=theme
    

  elsif user_edit == "likes_cats"
    puts "Please enter if the client likes cats."
    likes_cats = gets.chomp
    form[:likes_cats] = likes_cats
    
  else user_edit == "none"
   
  end


  puts "\n\nForm Input for client #{name} is:"
  puts form










