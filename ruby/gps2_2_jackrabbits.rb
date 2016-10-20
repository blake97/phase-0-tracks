# <<<<<< ~~~~~~~~~~________ Pseudocode ________~~~~~~~~~~  >>>>>> #

# # Create a new list

# # Add an item with a quantity to the list
# # Remove an item from the list
# # Update quantities for items in your list
# # Print the list (Consider how to make it look nice!)

# # Method to create a list

# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# # steps:
#     - create an empty hash (will be the list)
#     - take the input in form of a string
#     - separate the given string on basis of spaces
#     - each item in array would be stored as an argument for key of the hash
#     - set standard quantity
#     # set default quantity
#   # print the list to the console [can you use one of your other methods here?]  <==== return our hash
# # output:  hash

# # Method to add an item to a list
# # input: hash, item name, quantity
# # input: quantity=2, hash <==== incorrect; it'll break.             ? item name ?
# # steps:
#     - define mehtod to add an item (item, quantity) as parameters
#     - hash.store(item, quantity)
#     - return the hash
# # output: hash

# # Method to remove an item from the list
# # input: hash, item name
# # steps:
# - define method to remove an item (item name and hash)
# - delete a hash(item)
# - return the hash

# # output:

# # Method to update the quantity of an item
# # input: hash, item name, quantity
# # steps:
# - define mehtod to update an items quantity
# - reset that key/value pair
# - return the hash
# # output:

# # Method to print a list and make it look pretty
# # input: hash
# # steps:
# - each key/value pair in the hash, print.
# # output:
# hash

# Business Code ####################################
def create_a_list(string_of_items)
  grocery_list_hash = {}
  string_of_items.split(' ').each do |item|
    grocery_list_hash[item] = 1
  end
  return grocery_list_hash
end


def add_to_list(item_name, quantity = 1, grocery_list_hash)
  grocery_list_hash.store(item_name, quantity)
  return grocery_list_hash
end

def remove_an_item(item_name, grocery_list_hash)
  grocery_list_hash.delete_if {|item| item == item_name}
  return grocery_list_hash
end

def update_quantity(item_name,quantity,grocery_list_hash)
  grocery_list_hash[item_name]=quantity
  return grocery_list_hash
end

def print_pretty (grocery_list_hash)
  puts "* Your Grocery List *"
    puts"---------------------"
  list_num = 1
  grocery_list_hash.each do |item_name, quantity|
    puts "#{list_num}) #{item_name}: #{quantity}"
    list_num+=1
  end
  puts"<><><><><><><><><>"
end

# Driver Code ####################################
# test create_list

#create a new list.
blake_list = create_a_list("lemon olive_oil garlic")

#add item to a specific list.
add_to_list("salt", 2, blake_list)

#==>> if i put nothing here,
# the default quantity would be 1, since i set it to that in above
# definition. ALso, blake_list is created just before this, so that
# we can use it as a parameter, giving add_to_list access to the
# old hash.

#==>> ALSO, arguments must be placed in the order they were defined in parameters.

#test removing an item
remove_an_item("lemon", blake_list)

#test updating an item quantity
update_quantity("garlic", 6, blake_list)

#testing print a pretty grocery list
print_pretty(blake_list)
