def bubble_sort(array)
  loop do
    not_sorted = false
    array.each_with_index do |item, index|
      next if index == array.length - 1 # the last item has no pair, so we just stop it
      if item > array[index + 1]
        temp = item #swapping
        array[index] = array[index + 1]
        array[index + 1] = temp
        not_sorted = true
      end
    end
    break if not_sorted == false
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]