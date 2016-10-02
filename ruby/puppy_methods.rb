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



class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end


duchess.fetch("lamp")

class