class Puppy
end

duchess=Puppy.new
fido=Puppy.new
spot=Puppy.new

spot.class
duchess == fido

fido.instance_of?(Array)
fido.instance_of?(Puppy)
spot.instance_of?(Puppy)


# Puppy class fetch method -------------------->>>
class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
end
duchess.fetch("lamp")


# Puppy class speak method -------------------->>>
class Puppy
  def speak(number_woofs)
    number_woofs=number_woofs.to_i
    number_woofs.times {puts "Woof!"}
  end
end

fido.speak(6)

# Puppy class roll_over method -------------------->>>
class Puppy
  def roll_over
    puts "**rolls over**"
  end
end

fido.roll_over


# Dog years method -------------------->>>
class Puppy
  def dog_years(human_age)
    dog_equivalant= human_age*7
    puts "In dog years, that's #{dog_equivalant}!"
  end
end

puts "In human years, how many years old is your dog?"
human_age=gets.to_i

fido.dog_years(human_age)

# Dog plays guitar method -------------------->>>
class Puppy
  def guitar
    puts "***Tocando la guitarra***"
  end
end
fido.guitar


# Initialize method -------------------->>>
class Puppy
  def initialize
    puts "Initializing new puppy instance ..."
  end
end


# <<<<<< ~~~~~~~~~~________ Release 2: Writing my own Class! ________~~~~~~~~~~  >>>>>> #
####### METHODS/CLASSES ##########
class Gymnast
  def initialize
    puts "Initializing new Gymnast instance ..."
  end
  
  def flip
    puts "**gymnast flips**"
  end
  
  def cartwheel
    puts "**gymnast does a cartwheel**"
  end
end

########## DRIVER CODE METHOD ############
# Create 50 Gymnasts Method-------------------->>>
def start_off 
  puts "Attempting to initialize 50 new gymnasts:" ########=> you don't need this here, since initialize will print this
  gymnast_array=[]
  50.times do
    gymnast_array << Gymnast.new
    # p gymnast_array[instance_count] #<== DEBUG 
  end
  gymnast_array #=> implicit return
end

## Actual Driver Code
gymnast = start_off # setting our variable to the array from start_off method 

gymnast.each {|x| x.flip ; x.cartwheel }
puts "End."

############### Notes
#REPL wont see this: if variable_x = 100

### OTHER NOTES:
.map # returns a NEW ARRAY
.map! # returns and changes the original array
.each #=> returns n

array = [1,2,3,4,5]
p array.each { |x| x = "something different" ; puts "HELLO" }
p array # what's put out? what is array? 











