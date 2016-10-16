#### Pseudocode
#List various items to collect of different data types.
# put items into a hash
# call on the hash to print
# update hash value



#collect form information.
puts "Please enter the name of your client."
client_name = gets.chomp

puts "How old is #{client_name}?"
client_age = gets.chomp.to_i

puts "What style of decor is #{client_name} going for?"
decor_style = gets.chomp

puts "How many children does #{client_name} have?"
client_children = gets.chomp.to_i

puts "Does #{client_name} like green?"
likes_green = gets.chomp



# put form information into a hash. NOTE. no real use for hash
# rocket notation here, but I'm including it as example.

client_info = {
  name: client_name,
  age: client_age,
  decor: decor_style,
  "number of children" => client_children,
  "likes green" => likes_green
}


# print the hash out using iteration
puts "Please review #{client_name}'s entry.".center(4)
puts "------------------------------------"
client_info.each do |form_field, field_value|
  p "#{form_field}:     #{field_value}"
end

#give user opportunity to enter ONE change. Used until loop just for practice.
puts "\n\nIf the information above is correct, please type 'none.' Otherwise, please indicate the field value to update by indicating one of the following:
name
age
decor
number of children
green preference"

valid_input = false
edit_info = gets.chomp.downcase


until valid_input==true


  if edit_info == "name"
    puts "Great. What would you like to change the name to?"
    client_info[:name]=gets.chomp
    valid_input = true

  elsif edit_info == "age"
    puts "Great. What would you like to change the age to?"
    client_info[:age] = gets.chomp.to_i
    valid_input = true

  elsif edit_info == "decor"
    puts "Great. What would you like to change the decor type to?"
    client_info[:decor]= gets.chomp
    valid_input = true

  elsif edit_info=="number of children"
    puts "Great. How many children does your client have?"
    client_info["number of children"] = gets.chomp.to_i
    valid_input = true

  elsif edit_info == "green preference"
    puts "Great. Does your client like green?"
    client_info["likes green"]= gets.chomp
    valid_input = true

  elsif edit_info == "none"
    puts "Perfect, huh?"
    valid_input = true

  else
    puts "please enter one of the following:
    none
    name 
    age 
    decor 
    number of children 
    green preference"
    valid_input = false
    edit_info = gets.chomp.downcase


  end
end
#cycle through each hash/key combo and print it out.
puts "\n\nYour final client information is as follows:"
puts "--------------------------------------------"
client_info.each do |form_field, field_value|
  p "#{form_field}:     #{field_value}"
end
