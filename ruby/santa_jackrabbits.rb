##### Business Code #####
class Santa
  attr_accessor :reindeer_ranking, :gender
  attr_reader :age, :ethnicity

  def initialize(gender, ethnicity, age=rand(170))
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
    puts "Initializing new Santa instance..."
    puts "This santa is #{gender}, #{ethnicity}, and #{@age} years old."

  end

  def speak
    puts "Ho, ho, ho! Haaaapy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a very good #{cookie_type}, says #{@gender} santa!"
  end

  def celebrate_birthday
    @age+=1
    puts "This Santa is now #{@age} years old."
  end

  def get_mad_at(reindeer_name)
    reindeer_ranking.delete(reindeer_name)
    reindeer_ranking << reindeer_name
    puts "#{reindeer_name} is now at the end of the list: #{reindeer_ranking}."
  end

  def about_santa
    puts @age
    puts @gender
    puts @ethnecity
    puts @reindeer_ranking
  end


end



##### Driver Code #################################################################

# make a new Santa Class instance and call two instance methods on it.
harry_santa = Santa.new("male", "white")
harry_santa.speak
harry_santa.eat_milk_and_cookies("snickerdoodle")



# automatically randomly assign Santas with the following, for x number of times.
santa_arr = []

genders = ["agender", "bigender", "gender fluid", "male", "female", "N/A"]
ethnicities = ["latino", "native_american", "asian", "white", "african_american", "N/A"]

10.times do
  santa_arr << santa = Santa.new(genders.sample, ethnicities.sample)
end

santa_arr.each do |santa|
  santa.speak
  santa.eat_milk_and_cookies("chocolate chip")
end

santa_arr.each {|i| i.get_mad_at("Rudolph")}

harry_santa.celebrate_birthday

santa_arr.each do |instance|
  instance.about_santa
end
