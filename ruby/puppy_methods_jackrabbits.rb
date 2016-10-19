# <<<<<< ~~~~~~~~~~________ Release 0 ________~~~~~~~~~~  >>>>>> #

######## Business Code ########
class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(reps)
    reps.times {puts "Woof!"}
  end

  def roll_over
    puts "* rolls over *"
  end

  def dog_years(human_years)
    dog_age = human_years*7
  end

  def go_out?(mood)
    if mood == "happy"
      true
    elsif mood == "sick"
      false
    end
  end

end

######## Driver Code ########
puppy = Puppy.new

#fetch the argument
puppy.fetch("ball")

#speak testing
puppy.speak(7)

#test roll over
puppy.roll_over

#test dog_years
p puppy.dog_years(7)

#test go_out?
p puppy.go_out?("happy")


# <<<<<< ~~~~~~~~~~________ Release 1 ________~~~~~~~~~~  >>>>>> #

#tested initialize method

# <<<<<< ~~~~~~~~~~________ Release 2 ________~~~~~~~~~~  >>>>>> #

puts "\n\n\n"

######## Business Code ########

class Cars
  def initialize
    puts "Initializing a new automobile..."
  end

  def is_automatic?(answer)
    if answer == 'yes'
      true
    elsif answer == 'no'
      false
    end
  end

  def max_speed(int)
    "This car can go #{int} mph."
  end

end



######## Driver Code ########

car_arr = []
car = Cars.new
p car.is_automatic?("yes")
p car.max_speed(200)

50.times.each do |x| x = Cars.new
  car_arr << (x)
end
p car_arr


car_arr.each do |item| p item.max_speed(22)
 p item.is_automatic?('yes')
end


