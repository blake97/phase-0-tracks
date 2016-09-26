puts "\n\n\n<<<<<< ~~~~~~~~~~________ Release 1 ________~~~~~~~~~~  >>>>>>"
dogs =["Golden Retriever", "Poodle", "West Highland Terrier", "Australian Cattle Dog"]


breed_purpose ={
golden: "hunting birds",
poodle: "companionship",
westie: "hunting rodents",
austrailian: "herding cattle"
}

puts "\n\n:::::::::: Original Lists ::::::::::" #------------#

puts "\nDog Breeds:"
dogs.each do |breed|
  puts breed
end
puts "\n"
puts "\nDog Breeds and their purpose:"
breed_purpose.each do |breed,purpose|
  puts "#{breed} #{purpose}"
end

puts "\n\n:::::::::: After .each change ::::::::::" #------------#
puts "\nDog Breeds:"
dogs.each do |breed|
  #breed is each dog breed in turn
  puts "This dog is a #{breed}!"
end
puts "\n"

puts "\nDog Breeds and their purpose:"
breed_purpose.each do |breed,purpose|
  puts "The #{breed} is a great breed for #{purpose}!"
end


puts "\n\n:::::::::: After .map! ::::::::::" #------------#

puts "\nDog Breeds:"
dogs.map! do |breed|
  puts breed+"s kick ass!"
end


puts "\n\n\n<<<<<< ~~~~~~~~~~________ Release 2 ________~~~~~~~~~~  >>>>>>"

puts"original array"
arr = [1,4,3,4,5,6,7,8,4,10,11]
puts arr

puts "Delete_if Array number = 4."
arr.delete_if {|number| number== 4}
puts arr

puts "\n\nOriginal Hash"
name_age = {
james: 3,
zach: 4,
evalyn: 2,
cody: 8,
martha: 1,
}
puts name_age
puts "\nDelete_if Hash age = 4."
name_age.delete_if {|name, age| age== 4}
puts " #{name_age}"

puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  >>>>>>"

puts "\n\n Original Array."
arr = [1,4,3,4,5,6,7,8,4,10,11]
puts arr

puts "Keep_if Array number = 4."
arr.keep_if {|number| number==4}
puts arr

puts "\nOriginal Hash"
name_age = {
james: 3,
zach: 4,
evalyn: 2,
cody: 8,
martha: 1,
}
puts name_age
puts"\nKeep_if hash age = 4"
name_age.keep_if{|name, age| age==4}
puts name_age

puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  >>>>>>"

puts "\n\n Original Array."
arr = [1,4,3,4,5,6,7,8,4,10,11]
puts arr

puts "Select number if odd."
arr.select! {|number| number.odd?}
puts arr

puts "\nOriginal Hash"
name_age = {
cody: 3,
zach: 4,
evalyn: 2,
cody: 8,
martha: 1,
}
puts name_age
puts"\nselect if age is 2 "
name_age.select! {|name, age| age==2}
puts name_age

puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  >>>>>>"

puts "\n\n Original Array."
arr = [1,4,3,16,4,5,6,7,8,4,10,11]
puts arr

puts "Sort then drop numbers while the number is less than 5. "
arr.sort!.take_while {|number|number< 5}
puts arr.sort!.take_while {|number|number< 5}
























