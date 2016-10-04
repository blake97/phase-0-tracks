def add_items (items_string)
  grocery_list = {}
  puts items_string
  split_food = items_string.split(' ')
  split_food.each {|item| grocery_list[item]=0}
end

add_items("lemonade tomato onion ice-cream")

def add_one_item (x)
  grocery_list {item: watermellon}
end





create_list('carrots apples pizza milk')
add_item('lemonade', 2)
add_item('tomatoes', 3)
add_item('onions', 1)
add_item('ice_cream', 4)
remove_item('lemonade')
update_qty('ice_cream', 1)
print_list