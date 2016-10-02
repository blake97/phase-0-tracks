# <<<<<< ~~~~~~~~~~________ Release 0: Writing SantaClass ________~~~~~~~~~~  >>>>>> #
####### METHODS/CLASSES ##########

class Santa
  # santa speak method "Ho, ho, ho! Haaaappy holidays!"
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  #eat_milk_and_cookies method
  def eat_milk_and_cookies
    puts "*** Santa eats milk and cookies ***"
  end
  #initialize new instance of Santa
  def initalize
    puts "Initializing Santa instance..."
  end
end

########## DRIVER CODE for Release 0 ############
#testing new instance

Santa.new