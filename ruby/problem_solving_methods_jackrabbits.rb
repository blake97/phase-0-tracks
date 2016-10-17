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
