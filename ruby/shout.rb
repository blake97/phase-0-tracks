# ###################### Method Code #######################

# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!!!!!!!!!!!" + " :D"
#   end

# end

# ###################### Driver Code #######################

# require_relative 'shout'
# Shout.yell_angrily("SHIT")
# Shout.yelling_happily("YEAAAHHHHH")


# ---------------------------- Release 3 --------------------------------

###################### Method Code #######################

#Mix-in Module#
module Shout
  def yell_angrily(words)
    words + "!?!?!" + " :("
  end

  def yelling_happily(words)
    words + "!!!!!!!!!!!!!!!!!!" + ":D"
  end
end

#classes with modules included#
class Father
  include Shout
end

class Coach
  include Shout
end


chesster_daniel_fountain=Father.new
p chesster_daniel_fountain.yell_angrily("YOU SPENT HOW MUCH")
p chesster_daniel_fountain.yelling_happily("IM RETIRING IN 2.5 MONTHS")


coach_james=Coach.new
p coach_james.yell_angrily("WHAT WERE YOU THINKING")
p coach_james.yelling_happily("WE WON THE CHAMPIONSHIP")
