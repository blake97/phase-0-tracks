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