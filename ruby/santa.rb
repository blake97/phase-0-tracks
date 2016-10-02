# <<<<<< ~~~~~~~~~~________ Release 0: Writing SantaClass ________~~~~~~~~~~  >>>>>> #
####### METHODS/CLASSES ##########

class Santa


  #initialize new instance of Santa
  def initialize(gender,ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0

  end


  # santa speak method "Ho, ho, ho! Haaaappy holidays!"
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end


  #eat_milk_and_cookies method
  def eat_milk_and_cookies
    puts "*** Santa eats milk and cookies ***"
  end
end

########## DRIVER CODE for Release 0 ############
#testing new instance

santas = []

new_santa_genders =["gender questioning","transgender person","transgender female","transgender woman","transgender man","neutrois",
                    "male", "other", "male", "female", "female"]

new_santa_ethnicities =["polynesian","black","white", "north african", "south american", "alaska native", "sub-saharan african","white", "hispanic mestizo", "asian american", "asian american"]


new_santa_genders.length.times do |i|
  santas << Santa.new(new_santa_genders[i],new_santa_ethnicities[i])
  puts "There are now #{santas.length} Santa instances in the array"
  puts "----"
end
