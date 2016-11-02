require_relative "wordgame_jackrabbits"

describe Game do   let (:game) {Game.new("Blake", "see", "James")}

  it "creates users, number of guesses, and the word to guess." do
  expect(game.board_arr).to eq ["s","e","e"] end

  it "creates the working array" do expect(game.working_arr).to eq [] end


end


# spinning my wheels here... i run the rspec file, but i'm getting the
# following. I even tried PATH (".")...

# /Users/blake97/devbootcamp/phase-0-tracks/ruby/game_jackrabbits/wordgame_jac
# /krabbits.rb:52:in `gets': No such file or directory @ rb_sysopen - -fd
# /(Errno::ENOENT)

# blake [2:53 PM]   added and commented on a Plain Text snippet
# require_relative "wordgame_jackrabbits" describe Game do   let (:game)
# {Game.new("Blake", "see", "James")}     it "creates users, number of
# guesses, and the word to guess." do     expect(game.board_arr).to_eq [" s
# "," e "," e "]   end end 1 Comment Click to expand inline 9 lines the file
# is named correctly in the require_relative statement.

# bontgoy [2:54 PM]   you have to take gets.chomp out of your driver code

# blake [2:55 PM]   ugh. that makes perfect sense.... becasue i'm giving it to
# the file on initialization. so much web searching... wasted.

# blake [3:15 PM]   so, in order to make some of my instance variables pass in
# the rspec test, i'm having to move them from attr_reader to
# attr_accessor.... otherwise, for example, the rspec test is telling me the
# instance variable working_arr is not defined.

# [3:17]   # it feels bad that i have to break my program to get it to pass
# rspec... like i did with the dancer program, it just worked... the program
# being written to work under the rspec was fine... here, after i get the rspec
# to pass, i don't think the thing would run.

# # [3:19]   # i get that i should take the driver code out, and i'm getting a
# better sense of writing class/method code independent of driver code, which is
# something difficult for me- since i think very linearly in the coding process.

# bontgoy [3:29 PM]   you should be asking yourself if you want to the working
# array to be an instance variable in the first place

# [3:29]   # i think you should

# [3:29]   # and i think it should be readable

# [3:30]   # but if you are having trouble testing for a variable then you
# should be asking yourself whether or not it should be an instance variable

# [3:30]   # if it is just helping behavior then it probably doesn’t need to
# [be an instance variable

# [3:30]   # but if it does. like inventory in space ship

# [3:31]   # we make other things to make it readable

# [3:31]   # like print_inventory

# [3:31]   # and we can test the behavior of the instance method instead

# blake [3:34 PM]   hm. ok. let me look at something.

# blake [3:41 PM]   so, for programs with lots of instance variables, would a
# coder ever build a method like, "return_checkup" and within in it have a
# "return_hash" with each of the initializing instance variables, paired to
# their initializing output... and then in the spec file, they could just
# reference the hash keys in their expect statements ? so,  say that there
# were 2 instance variables produced upon initialization, name and age...
# final line of my return_checkup may look like return_hash = {name: "blake",
# age: "22"} - and in the rspec file, i could say that i expected
# (return_hash[name]).to eq "blake".
