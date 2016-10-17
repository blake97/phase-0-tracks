# <<<<<< ~~~~~~~~~~________ Release 0: Simple Search ________~~~~~~~~~~  >>>>>> #

array = [23, 89,32,1,2,55,3,4,6,89]

def search_array (array, number_to_search_for)
  loop_iteration = 0
  array.each do |array_item|
    if array_item == number_to_search_for
      puts loop_iteration
    end
    loop_iteration+=1
  end
end

search_array(array,89)


# <<<<<< ~~~~~~~~~~________ Release 1: Fibonacci Sequence ________~~~~~~~~~~  >>>>>> #


puts "How many numbers do you want to generate?"

items_to_generate = gets.chomp.to_i
primer = [0,1]
output_string=[]

def fib_generator(primer, items_to_generate)

  output_string = primer.push(primer.first + primer.last)

  until output_string.length == items_to_generate+2
    next_number = output_string.last + output_string[-2]
    output_string = output_string.push(next_number)
  end
  puts output_string
end

fib_generator(primer, items_to_generate)



# <<<<<< ~~~~~~~~~~________ Release 2: Sorting an Array  ________~~~~~~~~~~  >>>>>> #

# - i move through the array in pairs, building a new output array using a loop.
# - start with first two numbers.
# - I'd see if the first number was greater than the second one.
# - If the first number is greater, I'd move that number to the front of a sorted array
# - If the scond number is greater, I'd put that number to the  sorted array.
#   the loop would continue to run until no number was larger than the first



# low to high

arr = [1,3,9,6,7,8,]
temp =[]


ia = 0
ib = 1
arr.loop do |a, b|
 
  a= arr[ia]
  b= arr[ib]

  if a > b
    temp.push(b)
    temp.push(a)
  else
    temp.push(a)
    temp.push(b)
  end

  until ib == arr.length-1
    if a > b
      temp.push(b)
      temp.push(a)
    else
      temp.push(a)
      temp.push(b)
    end
    ia +=1
    ib +=1
  end

end
