############# Method Code #############

# Writing Flight module. no "self." - why?!
# When we're writing a module as a mixin designed to add instance methods
# to a class, we don't use the self keyword. We can define our module
# methods the same way we would write instance methods inside of a class.
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end


# Writing two classes##########
class Bird
  include Flight
end

class Plane
  include Flight
end


############# Driver Code #############

birdie = Bird.new
birdie.take_off(800)

jet = Plane.new
jet.take_off(30000)

