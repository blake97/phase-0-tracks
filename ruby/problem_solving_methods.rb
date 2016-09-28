
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

