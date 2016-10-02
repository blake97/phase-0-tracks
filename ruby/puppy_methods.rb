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



