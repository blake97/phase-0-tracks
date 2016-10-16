Pseudocode

List various items to collect of differnt datatypes.



#collect form information.
puts "Please enter the name of your client."
client_name = gets.chomp

puts "How old is #{client_name}?"
client_age = gets.chomp.to_i

puts "What style of decore is #{client_name} going for?"
decore_style = gets.chomp

puts "How many children does #{client_name} have?"
client_children = gets.chomp.to_i

puts "Does #{client_name} like the color 'new grass green?'?"
likes_grass_green? = gets.chomp





# put form information into a hash. NOTE. no real use for hash 
# rocket notation here, but I'm including it as example.

client_info {
client_name: client_name,
client_age: client_age,
decore: decore_style,
"Number of Children" => client_children,
"Likes New Grass Green?" => likes_grass_green
}




