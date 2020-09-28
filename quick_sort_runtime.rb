def quicksort_running_time(array)
  # write your code here
  sort_array = []
  sort_array += array
  insertion_runtime = running_time(array)
  quick_sort_runtime = quick_sort_running_time(sort_array)
  insertion_runtime - quick_sort_runtime
end

def quick_sort_running_time(array)
  shift_counter = 0
  array, shift_counter = advanced_quicksort(array, 0, array.length - 1, shift_counter)
  shift_counter
end

def advanced_quicksort(array, begin_index = 0, end_index = array.length - 1, shift_counter)
  # write your code here
  if begin_index < end_index
    pivot, shift_counter = in_place_sorting(array, begin_index, end_index, shift_counter)
    array, shift_counter = advanced_quicksort(array, begin_index, pivot - 1, shift_counter)
    array, shift_counter = advanced_quicksort(array, pivot + 1, end_index, shift_counter)
  end
  return array, shift_counter
end

def in_place_sorting(array, begin_index, end_index, shift_moves)
  greater_start_index = begin_index
  pivot_value = array[end_index]
  pivot_index = end_index

  (begin_index..end_index).each do |index|
    value = array[index]
    if value < pivot_value
      array[index], array[greater_start_index] = array[greater_start_index], array[index]
      shift_moves += 1
      greater_start_index += 1
    end
  end
  
  array[pivot_index], array[greater_start_index] = array[greater_start_index], array[pivot_index]
  shift_moves += 1
  return greater_start_index, shift_moves
end

def running_time(array)
  # write your code here
  sorted_array = []
  shift_moves = 0
  unsorted_array = array
  sorted_array << unsorted_array.shift
  sorted_array, shift_moves = insertion_sort(sorted_array, shift_moves)
  i = 0
  (array.length).times do
    sorted_array << unsorted_array.shift
    sorted_array, shift_moves = insertion_sort(sorted_array, shift_moves)
    i += 1
  end
  shift_moves
end

def insertion_sort(array, shift_moves)
  # write your code here
  value_to_insert = array[-1]
  i = array.length - 1
  while array[i] >= value_to_insert
    if i == 0
      array[i] = value_to_insert
      break
    elsif value_to_insert < array[i-1]
     array[i] = array[i-1]
     shift_moves += 1
    else
      array[i] = value_to_insert
    end
    i -= 1
  end
  return array, shift_moves
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
