####### METHODS/CLASSES ##########

class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

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



  # adding 3 attribute-changing methods: QUESTION - I'm making setter methods... how do i make a method that only works in the class... which is what they want the first two to be?

  #  Class Methods?
  def celebrate_birthday
    @age = @age+1
  end

  def get_mad_at (reindeer_in_trouble)
    @reindeer_ranking.each do|deer_name|
      if deer_name == reindeer_in_trouble
        deer_name.index = -1
      end
    end
  end


  # # Getter Methods <== wanted to keep the code for future reference, but have commented out because attr_reader does it on line 4
  #   def get_age
  #     @age
  #   end

  #   def get_ethnicity
  #     @ethnicity
  #   end


  # SETTER METHODS: Can be changed outside of Santa class.
  #   def gender_change (new_gender)
  #     @gender = new_gender
  #   end

end

def santa_info
  puts "Santa is #{Santa.get_ethnicity}, and Santa is #{nta.get_age} years old."
end

########## DRIVER CODE for Release 0 ############
#testing new instance

santas = [] #<= created empty santa array
#add new instances of santa gender
new_santa_genders =["gender questioning","transgender person","transgender female","transgender woman","transgender man","neutrois",
                    "male", "other", "male", "female", "female"]
#added the same number of instances for santa ethnicities
new_santa_ethnicities =["polynesian","black","white", "north african", "south american", "alaska native", "sub-saharan african","white", "hispanic mestizo", "asian american", "asian american"]


new_santa_genders.length.times do |i| #<= for the length of new instances, instruct the following to run that number of times, and identify "i" as the iteration key
  santas << Santa.new(new_santa_genders[i],new_santa_ethnicities[i]) #<= creating a pair of arguments that match our definition, iterating to reference them, feeding them to the santa initialization method above
  puts "There are now #{santas.length} Santa instances in the array"
  puts "----"
end

Santa.eat_milk_and_cookies


####### generating a ton of Santas by selecting from both arrays at random. ############



100.each do |i|#<= for the length of new instances, instruct the following to run that number of times, and identify "i" as the iteration key
  santas << Santa.new((new_santa_genders.sample),(new_santa_ethnicities.sample)) #<= creating a pair of arguments that match our definition, iterating to reference them, feeding them to the santa initialization method above
  puts "This santa is #{@gender[i]} and #{@age[i]}."
  puts "There are now #{santas.length} Santa instances in the array. "
  puts "----"

end



























