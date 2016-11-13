# this project is somewhat mirroring the website plan i've laid out for this web developer group to complete... i submitted to the project before i started dev bootcamp, so this is really nice to see what they do to make my ideas come to fruition.


# set up the database and tables
##########################################################################

require 'sqlite3'

db = SQLite3::Database.new("artbase.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS collections(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  relative_price INT
);
SQL

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS art_pieces(
  id INTEGER PRIMARY KEY,
  name varchar(255),
  style_id INT,
  medium_id INT,
  collection_id INT,
  FOREIGN KEY (style_id) REFERENCES styles(id),
  FOREIGN KEY (medium_id) REFERENCES media(id),
  FOREIGN KEY (collection_id) REFERENCES collections(id)
);
SQL

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS media(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
);
SQL

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS styles(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
);
SQL

db.execute(create_table_cmd)

def add_collection(db, name, relative_price)
  db.execute("INSERT INTO collections (name, relative_price) values (?,?)", [name, relative_price])
end


def add_style(db, name)
  db.execute("insert into styles (name) values (?)", [name])
end


def add_medium(db, name)
  db.execute("insert into media (name) values (?)", [name])
end


def add_artpiece(db, name, style_id, medium_id, collection_id)
  db.execute("INSERT INTO art_pieces (name, style_id, medium_id, collection_id) VALUES (?,?,?,?)", [name, style_id, medium_id, collection_id])
end


#adding some collections #############################################
add_collection(db, "White House Collection", 5) #<== relative price is number dollar signs out of 5 dollar signs
add_collection(db, "Martha Stewart Collection", 2)
add_collection(db, "dollar store", 1)
add_collection(db, "pier 1", 2)

#adding some styles ##################################################
add_style(db, "American Classic")
add_style(db, "pop culture")
add_style(db, "Geometric")

#adding some media ##################################################
add_medium(db, "oil")
add_medium(db, "watercolor")
add_medium(db, "digital")

#adding art pieces ###################################################
add_artpiece(db, "Portrait of George Washington", 1, 1, 2)
add_artpiece(db, "beautiful picture", 2, 3, 1)
add_artpiece(db, "ARTE", 5,2,3)


# Join tables ##########################################################################



# Driver Code ##########################################################################
puts "Hello, what's your annual income?"
income = gets.to_i
valid_income = false

until valid_income
  if income < 20,000
    buy_power = 1
    valid_income = true
  elsif income <40,000
    buy_power=2
    valid_income = true
  elsif income < 60,000
    buy_power = 3
    valid_income = true
  elsif income < 80,000
    buy_power = 4
    valid_income = true
  elsif income >=120,000
    buy_power = 5
    valid_income = true
  else
    puts "please enter your income."
    valid_income = false
    income = gets.to_i
  end
end

def search_art
  puts "What medium?"
  medium_in = gets.chomp.downcase
  if medium_in == "oil"
    medium_id = 1
    art = db.execute("SELECT * FROM art_pieces where ")
  elsif medium_in == "watercolor"
    medium_id = 2
  elsif medium_in == "digital"
    medium_id = 3
  else
    puts "I'm sorry, we don't have any #{medium_in} works."
  end

  return_art = db.execute (SELECT art_pieces.name,
                           collections.name,
                           media.name,
                           styles.name,
                           collections.relative_price

                           FROM   collections,
                           art_pieces,
                           media,
                           styles

                           Where  medium.id == medium_id

                           JOIN   art_pieces
                           ON art_pieces.style_id = styles.id,
                           AND art_pieces.business_id = businesses.id,
                           AND art_pieces.collection_id = collections.id;
                           )

  puts return_art.each do |artpiece|
    p artpiece
  end
end
