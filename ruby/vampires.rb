# <<<<<< ~~~~~~~~~~________Collect the data________~~~~~~~~~~  >>>>>> #


puts "Hello. What is interviewee name?"
name = gets.chomp

puts "How old is interviewee?"
age = gets.to_i

puts "What year was interviewee born in?"
birth_year = gets.to_i

puts "Should we order some garlic bread for interviewee?"
garlic = gets.chomp

puts "Would interviewee like to enroll in the company’s health insurance?"
insurance = gets.chomp

#___ for the interviewer___#

puts "what is the current year?"
current_year = gets.to_i



# <<<<<< ~~~~~~~~~~________TESTING________~~~~~~~~~~  >>>>>> #

#name verification test
valid_name_input = false
until valid_name_input
  puts "Is the interviewee name on vampire list? please mark 'y' or 'n'"
  name_list = gets.chomp
    if name_list == "y"
      name_one_vampire_list = true
      valid_name_input = true
    elsif name_list == "n"
      name_one_vampire_list = false
      valid_name_input = true
    else 
      puts "please enter 'y' or 'n'"
   end
end


#age verification test
if current_year - birth_year != age
  vampires_correct_age = false
else
  vampires_correct_age = true
end


#garlic bread test
if garlic == "yes"
  vampires_like_garlic = true
else garlic = "no"
  vampires_like_garlic = false
end


#health insurance test
if insurance == "yes" 
  vampires_needs_insurance = true
else
  vampires_needs_insurance = false
end
  
# <<<<<< ~~~~~~~~~~________ Evaluating Test Logic________~~~~~~~~~~  >>>>>> #

#___Basic Rule Logic values common to vampires___#

      # name_one_vampire_list = true
      # vampires_correct_age = false
      # vampires_like_garlic = false
      # vampires_needs_insurance = false


#___ Combined Rule Logic___#







#__Match code to outcome__#




