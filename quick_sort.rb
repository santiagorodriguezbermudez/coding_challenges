def advanced_quicksort(array, begin_index = 0, end_index = array.length - 1)
  # write your code here
  if begin_index < end_index
    pivot = in_place_sorting(array, begin_index, end_index)
    puts "[" + array.join(', ') + "]"
    advanced_quicksort(array, begin_index, pivot - 1)
    advanced_quicksort(array, pivot + 1, end_index)
  end
end

def in_place_sorting(array, begin_index, end_index)
  
  greater_start_index = 0
  pivot_value = array[end_index]
  pivot_index = end_index
  
  array.each_with_index do |value, index|
    if value < pivot_value
      array[index], array[greater_start_index] = array[greater_start_index], array[index]
      greater_start_index += 1
    end
  end
  
  array[pivot_index], array[greater_start_index] = array[greater_start_index], array[pivot_index]
  
  greater_start_index
  
end