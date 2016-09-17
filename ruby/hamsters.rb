puts "What's the name of the hamster?"

name = gets.chomp

valid_volume_input = false
until valid_volume_input

  puts "What's the volume level from 1-10?"
  volume_level = gets.to_i

  if volume_level > 10
    puts "Please input a number between 1-10."
    valid_volume_input = false
  elsif volume_level < 1
    puts "Please input a number between 1-10."
    valid_volume_input = false
  else volume_level <= 10 && volume_level >= 1
    valid_volume_input = true
    puts "Thank you."
  end
end

puts "What's the color of the fur?"
fur_color = gets.chomp


valid_adoption_input = false
until valid_adoption_input
  puts "Is the hamster a good candidate for adoption?"
  adoption_ready = gets.chomp

  case adoption_ready
    when "YES", "yes", "y", "Yes"
      valid_adoption_input = true
    when "NO", "no", "n", "No"
      valid_adoption_input = true
    else 
      valid_adoption_input = false
  end
end



puts "What's the estimated age of the hamster?"

estimate_age = gets.chomp

if estimate_age == ""
  estimate_age = nil
else 
  estimate_age = estimate_age.to_i
end




puts "\n\nHamster Information Below"
puts "\nName: #{name}"
puts "Volume level: #{volume_level}"
puts "Fur color: #{fur_color}"
puts "Adoption Ready? #{adoption_ready}"
puts "Estimated age: #{estimate_age}"



