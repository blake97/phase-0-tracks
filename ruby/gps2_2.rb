############# Method to create a list


# get a string
def grocery_list(string)
  #turn into an array
  array = string.split(" ")
  #turn array into a hash with each key having a value of 1
  grocery_hash = Hash.new
  array.each do |item|
    grocery_hash[item] = 1
  end

  #use hash to print out grocery_list
  def print_list(grocery_list)
    grocery_list.each do |item,quantity|
      puts " #{item} #{quantity}"
    end
  end
# using grocery hash output as input for print_list
  print_list(grocery_hash)
end

############# Method to add item to a list

def add(grocery_list, item, quantity)
  grocery_list[item] = quantity
end

############# Method to remove item to a list
def remove(grocery_list, item)
  grocery_list.delete(item)
end

############# Method to update quantity
def update(grocery_list, item, quantity)
  grocery_list[item] = quantity
end

############### Driver Code to test ###############
grocery_list("potatoe_chips marshmallows carrot hot_dogs")

grocery_list.add(grocery_list,pumpkin_pie,4)



