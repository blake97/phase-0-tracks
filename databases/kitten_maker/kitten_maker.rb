# OPERATION KITTEN EXPLOSION!


# -- Setup -------------------------------------------------------------------------
# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database and store it in a variable (white db below)
db = SQLite3::Database.new("kittens.db")
# database should be able to run ls in terminal to see the database or not...  don't use sqlite3 to do this bc if it's not there, the program would create it, adn give us a false positive
# git commit here!

db.results_as_hash = true  # this impact how the gem on line 17 returns our data. So, instead of the nested array structure, we get an array of hashes instead of an array of arrays

#if we want to call a method that iterates through kittens and returns some data, we can perform the below code. 
# kittens.each do |kitten|
#   puts "{kitchen['name']} is #{kitten['age']}"
# end

# learn about fancy string delimiters
create_table_cmd = <<-SQL        # here, doesn't matter what won't show up in the string text below... Here, we used SQL because that's what we're tryign to work with here. NOTE that the code below IS ruby. It is NOT sql! it's abother way of declairing a string, the same was as  " str = "this is a string" is made
  CREATE TABLE IF NOT EXISTS kittens( # IF NOT EXISTS is sql language. If we run kitten_maker twice, we'd get an error saying that the tables already exist... to get around that, we simply put this in. it won't try to make the kittens table since it's already been done. 
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL               # here,  type it again, and this closes it out.

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)  # here, we're telling ruby to execute the code from lines 18 - 24

--  -------------------------------------------------------------------------
# add a test kitten - the below code would run every time we run the entire ruby file. the problem with that is we would get duplicates, since our program is now persistent. So, after running it, we'll comment it out to prevent further duplicate entries.

# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)") 

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion


def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])# the question marks are the place holders for data that gets dropped in. We don't use interpolation becasue they'd each need quotes around it, but also, SQL Injection (a security attack) is possible. So, it's bad practice to interpolate data into sql. Instead, use ? as a placeholder. First argument is the long sql "insert into kittens" in the second argument, provide the values in the order you want them to appear ([name], [age])
end

#now, we want to make LOTS of kittens... defalt age is 0 years old(kittens)
10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# the below is to just explore the data we created for verification purposes... if we don't want it to run, we just comment it out.

# explore ORM by retrieving data

kittens = db.execute("SELECT * FROM kittens")
puts kittens.class # because it's good to just go ahead and call on the data since some of the stuff we work with may have proprietary datatypes or classes.
p kittens #to return the data.

# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end




SELECT users.first, 
       users.last, 
       businesses.name, 
       reviews.stars, 
       reviews.comment 
FROM   users, 
       businesses 
       JOIN reviews 
        ON reviews.user_id = users.id 
        AND reviews.business_id = businesses.id; 















