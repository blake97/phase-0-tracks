# <<<<<< ~~~~~~~~~~________Collect the data________~~~~~~~~~~  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #
puts "note that this form is to be filled out by the interviewer only after an in-person interview has taken place." 



puts "\n\nHow many interviewees do you wish to review?"
  begin
        numberrepeat = gets.chomp
        numberrepeat = Integer(numberrepeat)
      rescue
        print "Please enter an integer number:"
        retry
      end




current = 0
until current==numberrepeat
puts "\n\n\nThis is interviewee #{current+1} out of #{numberrepeat} total interviewees."
   

    # <<<<<< ~~~~~~~~~~________ Listing allergies________~~~~~~~~~~ #


puts "Please list any interviewee allergies, one by one. When finished, please type 'done.'"

endsignal=false
until endsignal
  allergy= gets.chomp
  case allergy
    when "sun", "sunshine", "sunlight", "sun rays"
      puts "Probably a vampire"
      endsignal=true
    when "done","none","na","n/a","N/A"
      puts "thank you for listing all allergies."
      endsignal =true
    else
      endsignal=false
      puts "Thank you. Next allergy?"
  end
end

    # <<<<<< ~~~~~~~~~~________ name ________~~~~~~~~~~  >>>>>> #
      puts "\n\nWhat is interviewee name?"
      name = gets.chomp

      # to determine if name is in vampire database 
      puts "\nIs the interviewee name on vampire list? please mark 'y' or 'n'."
      valid_name_input = false
      until valid_name_input
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
      puts "\nHow old is interviewee?"
        begin
          age = gets.chomp
          age = Integer(age)
        rescue
          print "Please enter an integer number:"
          retry
        end

      puts "\nWhat year was interviewee born in?"
        begin
          birth_year = gets.chomp
          birth_year = Integer(birth_year)
        rescue
          print "Please enter an integer number:"
          retry
        end

      puts "\nWhat is the current year?"
        begin
          current_year = gets.chomp
          current_year = Integer(current_year)
        rescue
          print "Please enter an integer number:"
          retry
        end

     #age verification test
        if current_year - birth_year != age
          vampires_correct_age = false
        else
          vampires_correct_age = true
        end
    # <<<<<< ~~~~~~~~~~________ Garlic-Related ________~~~~~~~~~~  >>>>>> #
      puts "\nShould we order some garlic bread for interviewee? Please use 'y' or 'n'."
      valid_garlic_input = false
      until valid_garlic_input
        garlic = gets.chomp
        if garlic == "y"
          vampires_like_garlic = true
          valid_garlic_input = true
        elsif garlic == "n"
          vampires_like_garlic = false
          valid_garlic_input = true
        else 
          puts "please enter 'y' or 'n'"
        end
      end
    # <<<<<< ~~~~~~~~~~________ Insurance-Related ________~~~~~~~~~~  >>>>>> #
      puts "\nWould interviewee like to enroll in the company’s health insurance? please type 'y' or 'n'."
      valid_insurance_input = false
        until valid_insurance_input
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
    #Basic Vampire ID Logic ________#
      # name_on_vampire_list = true
      # vampires_correct_age = false
      # vampires_like_garlic = false
      # vampires_needs_insurance = false

    #Combined Rule Logic____________#
      
      if vampires_correct_age =true && vampires_like_garlic =true
        puts "\n\nResult for #{name}: Probably not a Vampire."

          elsif !(vampires_correct_age=true) && (vampires_like_garlic=false || vampires_needs_insurance=false)
            puts "\n\nResult for #{name}: Probably a Vampire."

          elsif vampires_correct_age=false && vampires_like_garlic=false && vampires_needs_insurance=false
            puts "\n\nResult for #{name}: Almost certainly a vampire."

          elsif name_list=true 
            puts "\n\nResult for #{name}: Definitely a vampire."

          else 
            puts " \n\nResult for #{name}: Inconclusive"
        end

 current +=1
end


abort("\n\nActually, never mind! What do these questions have to do with anything? Let's all be friends.")



 











