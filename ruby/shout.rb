###################### Method Code #######################

module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!!!!!!!!!!!" + " :D"
  end

end

###################### Driver Code #######################

require_relative 'shout'
Shout.yell_angrily("SHIT")
Shout.yelling_happily("YEAAAHHHHH")
