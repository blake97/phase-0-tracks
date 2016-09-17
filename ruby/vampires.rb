# <<<<<< ~~~~~~~~~~________Collect the data________~~~~~~~~~~  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #
puts "note that this form is to be filled out by the interviewer only after an in-person interview has taken place." 

# <<<<<< ~~~~~~~~~~________ name ________~~~~~~~~~~  >>>>>> #
puts "What is interviewee name?"
name = gets.chomp

# to determine if name is in vampire database 
  valid_name_input = false
  until valid_name_input
    puts "Is the interviewee name on vampire list? please mark 'y' or 'n'."
    name_list = gets.chomp
      if name_list == "y"
        name_on_vampire_list = true
        valid_name_input = true
      elsif name_list == "n"
        name_on_vampire_list = false
        valid_name_input = true
      else 
        puts "please enter 'y' or 'n'"
     end
  end

# <<<<<< ~~~~~~~~~~________ Age-Related ________~~~~~~~~~~  >>>>>> #
  puts "How old is interviewee?"
  age = gets.to_i

  puts "What year was interviewee born in?"
  birth_year = gets.to_i


  puts "what is the current year?"
  current_year = gets.to_i

  #age verification test
  if current_year - birth_year != age
    vampires_correct_age = false
  else
    vampires_correct_age = true
  end

# <<<<<< ~~~~~~~~~~________ Garlic-Related ________~~~~~~~~~~  >>>>>> #
  valid_garlic_input = false
  until valid_garlic_input
    puts "Should we order some garlic bread for interviewee?"
    garlic = gets.chomp
    if garlic == "y"
      vampires_like_garlic = true
      valid_garlic_input = true
    elsif garlic = "n"
      vampires_like_garlic = false
      valid_garlic_input = true
    else 
      puts "please enter 'y' or 'n'"
    end
  end

# <<<<<< ~~~~~~~~~~________ Insurance-Related ________~~~~~~~~~~  >>>>>> #
  valid_insurance_input = false
  until valid_insurance_input
    puts "Would interviewee like to enroll in the company’s health insurance? please type 'y' or 'n'."
    insurance = gets.chomp
      if insurance == "y" 
        vampires_needs_insurance = true
        valid_insurance_input =true
      elsif insurance == "n"
        vampires_needs_insurance = false
        valid_insurance_input = true
      else
        puts "please enter 'y' or 'n'"
      end
  end


# <<<<<< ~~~~~~~~~~________ Evaluating Test Logic________~~~~~~~~~~  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #

#___Basic Rule Logic values common to vampires___#

      # name_one_vampire_list = true
      # vampires_correct_age = false
      # vampires_like_garlic = false
      # vampires_needs_insurance = false


#___ Combined Rule Logic___#







#__Match code to outcome__#




