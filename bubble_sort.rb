def bubble_sort(array)
  loop do
    not_sorted = false
    array.each_with_index do |item, index|
      next if index == array.length - 1 # the last item has no pair, so throw it away
      if item > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        not_sorted = true
      end
    end
    break if not_sorted == false
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]