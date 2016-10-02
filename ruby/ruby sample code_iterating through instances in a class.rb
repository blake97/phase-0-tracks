
  def initialize(name)
    @name = name
  end
  
  def bark
    puts "#{@name} says: Woof!"
  end
end

# we make an array of names to build puppies with
names = ["Fido", "Spot", "Duchess", "Ginger"]

# we make an empty container for our puppy collection
puppies = []

puts "Iterating through names list to create puppies ..."
names.each do |name|
  puts "Creating a puppy named #{name} ..."
  puppies << Puppy.new(name)
  puts "There are now #{puppies.length} Puppy instances in the array"
  puts "----"
end

puts "Testing each Puppy instance in the array to make sure it can bark ..."
puppies.each do |puppy|
  puppy.bark
end


