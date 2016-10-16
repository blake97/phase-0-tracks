#declare an array and a hash
actors_and_friends=[]
new_units_of_measurement = {}
actors_arr = ["haley bennet", "ben stiller", "simone missick", "bernie mac", "eva green"]
units_of_measurement_hash = {
  length: "inchz",
  volume: "fluid ounces",
  weight: "pound & ounces",
  money: "dollar & cents",
  time: "seconds"
}

puts "Iteration through array with .each"
#iteration of array with .each
actors_arr.each do |actor_name|
puts "#{actor_name} is a pretty famous actor... just sayin."
end

#iteration of hash with .each
puts "\n\niteration through hash with .each"
units_of_measurement_hash.each do |measurement_type, units|
 puts "In America, we measure #{measurement_type} in #{units}."
end

#iteration of array with .map, using it to create a new array
actors_arr.map do |actor|
  actors_and_friends << "#{actor} and friends"
  actors_and_friends
end
puts "\n\nnewly created array using map, based off of original actors array:"
puts actors_and_friends


units_of_measurement_hash.map do |measurement_type, units|
  new_units_of_measurement[measurement_type]=units.chop
end

puts "\n\nnewly created hash using .map and the origianal units_of_measurement_hash (removed 's' from end)."
puts new_units_of_measurement


#map! on array

actors_arr.map! do |actor|
  actor.upcase
end

puts "\n\nedited actor names in place using .map!"
puts actors_arr


# <<<<<< ~~~~~~~~~~________Release 2________~~~~~~~~~~  >>>>>> #


arr = [1,4,3,9,5,5,7,8,4,10,11]
name_age = {
james: 3,
zach: 4,
evalyn: 2,
cody: 8,
martha: 1,
}

# A method that iterates through the items, deleting any that meet a certain condition 
# (for example, deleting any numbers that are less than 5).

arr.delete_if {|number| number <=7}
p arr

name_age.delete_if {|name, age| age >= 5}
p name_age  





# A method that filters a data structure for only items that do satisfy a certain 
# condition (for example, keeping any numbers that are less than 5).

arr = [1,4,3,9,5,5,7,8,4,10,11]
name_age = {
james: 3,
zach: 4,
evalyn: 2,
cody: 8,
martha: 1,
}

arr.keep_if {|num| num <3}
puts arr

name_age.keep_if {|name, age| age == 4}
p name_age



# A different method that filters a data structure for only items satisfying a 
# certain condition -- Ruby offers several options!

arr = [1,4,3,9,5,5,7,8,4,10,11]
name_age = {
james: 3,
zach: 4,
evalyn: 2,
cody: 8,
martha: 1,
}

arr.select! {|number| number >5}

name_age.select! {|name, age| name != :cody} 


# A method that will remove items from a data structure until the condition in the 
# block evaluates to false, then stops (you may not find a perfectly working option 
# for the hash, and that's okay).

puts "\n\n Original Array."
arr = [1,4,3,16,4,5,5,6,7,8,4,10,11]
puts arr

puts "Sort then drop numbers while the number is less than 5. "
arr.sort!.take_while {|number|number< 5}
puts arr.sort!.take_while {|number|number< 5}






























