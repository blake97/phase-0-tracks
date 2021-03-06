# Virus Predictor

# I worked on this challenge [by myself, with: MIchaeil Silberstein].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#####require_relative pulls in a file with data needed to make the program function. 
# must be in the same directory. also, don't need to declare that it's a ruby file. 
#
require_relative 'state_data'

class VirusPredictor


# jsut takes new instances of the class Virus Predictor and puts in 
# specified information to make it run. It also creates instance variables
# equal to the ones being passed in for use by other class methods.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population_density = population_density
    @population = population
    
  end

# this just prints out the data created/predicted 
# by the logic in our other methods. it's referencing the instance variables
# created by the initalize methods
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

# uses the information given to calculate predicted deaths.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# uses the information given to calculate disease spread
  def speed_of_spread
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================


STATE_DATA.each do |state, data|
p  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end


# DRIVER CODEmy
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?

# What does require_relative do? How is it different from require?
#   require relative takes a relative path. Require is more static. 

# What are some ways to iterate through a hash?
# with block syntax and the methods: .each, .each_pair.each, .each_key, 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# 1, that they were in different orders than the order things were pulled into the 
# initializeing statement
# 2), that it didnt even need to call arguments, since were already pulling that data 
# through on the .each iteration. also, .state was redundant at the end.

# What concept did you most solidify in this challenge?
# thre were a few - workign with nested hashes in an actual problem was good to use. It
# confused me at first. Id say that was the biggest thing for me. Reinforced was requiring
# another file and workign with it. OH- and Constant variables. I'd never heard of that. OHOH!
# and .floor extension - there were actually a lot i pulled out of this exerciese! OH- and 
# refactoring/simplifying... making something not redundant.


































