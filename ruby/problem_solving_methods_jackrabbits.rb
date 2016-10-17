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

 #1 create intake for the starting array to be sorted.
 # #2 iterate through the array in pairs, starting with the first two integers
 # #3 if the first integer of the first pair is the larger one, put that number 
 # in a new array, followed by the second integer. 
 # # if the second one is larger, put that one first in the new array, followed
 #  by the first integer.
 # #4 shift the reading frame down the array by two. complete the same process 
 # until reaching the end of the array.
 # #5 set the new array equal to the starting array
 # #6 continue steps 1-5 until there are no instances in which the second paired 
 # integer is smaller than the first integer.
 # #7 print the final new array


############ second attempt, reviewing code from bubble sort.
 # - i move through the array in pairs, building a new output array using a loop.
# - start with first two numbers.
# - I'd see if the first number was greater than the second one.
# - If the first number is greater, I'd move that number to the front of a sorted array
# - If the scond number is greater, I'd put that number to the  sorted array.
#   the loop would continue to run until no number was larger than the first



def bubble_sort(number_list)
  n= number_list.length
  loop do
    flipped = false
    (n-1).times do |i|
      if number_list[i] > number_list[i+1]
       number_list[i], number_list[i+1] = number_list[i+1], number_list[i]
       flipped = true
      end
    end
    break if not flipped
  end
number_list
end

number_list= [2,32,34,6,239,3,45]
bubble_sort(number_list)
