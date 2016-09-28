
# <<<<<< ~~~~~~~~~~________Release 1________~~~~~~~~~~  >>>>>> #


  arr = [23,42,33,44,51,6,6]

  def search(arr, int)
  position=0
    until position == arr.length
      arr.each do |n|
        if n == int
          puts "position = #{position}"
        end
        position += 1
      end
    end
  end

  search(arr,6)

# <<<<<< ~~~~~~~~~~________ Fibonacci Sequence Generator________~~~~~~~~~~  >>>>>> #
def fib_generator(total_fib_items)
  position=0
  start_array =[0,1]
    until position == total_fib_items-2
      start_array<< start_array.last + start_array[-2]
    position=position+1
   end
   return start_array
end
fib_generator(100)
# <<<<<< ~~~~~~~~~~________ Ruby Sorting Method ________~~~~~~~~~~  >>>>>> #

#pseudocode
 
 #1 create intake for the starting array to be sorted.
 #2 iterate through the array in pairs, starting with the first two integers
 #3 if the first integer of the first pair is the larger one, put that number in a new array, followed by the second integer. 
 # if the second one is larger, put that one first in the new array, followed by the first integer.
 #4 shift the reading frame down the array by two. complete the same process until reaching the end of the array.
 #5 set the new array equal to the starting array
 #6 continue steps 1-5 until there are no instances in which the second paired integer is smaller than the first integer.
 #7 print the final new array

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



