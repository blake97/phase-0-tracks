# Virus Predictor

# I worked on this challenge [with: James Williams].
# 1.5 hours

# EXPLANATION OF require_relative
#linking the datafile to the class/methods. require_relative is in the
#same folder, and no path is required. Also, don't need to require the
#extension  require relative only used on files - no gems or extensions-
#require allows this.

require_relative 'state_data_jackrabbits'

class VirusPredictor

  #creating new instance variables for each new run of the virus predictor... based odd of linked data file.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #printing out the predicted deaths and speed of spread in one "round-up" list of method outputs.
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private #<======== makes the following instance methods inaccessible outside of the class they are created in. here, viruspredictor

  # calculates predicted deaths using  population density as a conditional
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end

    number_of_deaths = (@population * factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #calculates speed of spread based on population density as a conditional
  def speed_of_spread#(population_density, state) #in months
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

# DRIVER CODE
# initialize VirusPredictor for each state

STATE_DATA.each do |state, demographics|
 VirusPredictor.new(state, demographics[:population_density], demographics[:population]).virus_effects
end


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


