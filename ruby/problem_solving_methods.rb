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

