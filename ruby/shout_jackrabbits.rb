# <<<<<< ~~~~~~~~~~________Release 1________~~~~~~~~~~  >>>>>> #
#non- mixed-in module. This file has to be required then called
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!!!!" + " :("
#   end


#   def self.yelling_happily(words)
#     words + "!" + ":))))))))"
#   end

# end


# # Driver Code#############
# Shout.yell_angrily("Fuck")
# Shout.yelling_happily("Yayyyy")


# <<<<<< ~~~~~~~~~~________Release 2________~~~~~~~~~~  >>>>>> #

# mixed-in module version

module Shout
  def yell_angrily(words)
    words + "!!!!!!" + " :("
  end

  def yelling_happily(words)
    words + "!" + ":))))))))"
  end
end

class Landlord
  include Shout
end

# Driver Code#############

harold= Landlord.new

harold.yell_angrily("WHERE IS MY RENT?!?!?!!")
harold.yelling_happily("I SOLD MY BUILDING FOR DOUBLE THE VALUE")



