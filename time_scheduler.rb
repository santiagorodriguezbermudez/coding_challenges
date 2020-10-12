def merge_sort(array1, array2)
  # write your code here
  sorted_array = []
  first_index = 0
  second_index = 0
  
  while (first_index <= (array1.length - 1)) && (second_index <= (array2.length - 1))
    if array1[first_index][1] <= array2[second_index][1]
      sorted_array << array1[first_index]
      first_index += 1
    else
      sorted_array << array2[second_index]
      second_index += 1
    end
  end
  
  sorted_array += array1[first_index, array1.length - first_index] if first_index < array1.length
  sorted_array += array2[second_index, array2.length - second_index] if second_index < array2.length
  sorted_array
end

def recursive_merge_sort(array)
  # base case scenario for recursion
  return array if array.length == 1
  
  # Divide the problem
  half_index = array.length / 2
  array1 = array[0...half_index]
  array2 = array[half_index...array.length]
  
  sorted_array1 = recursive_merge_sort(array1)
  sorted_array2 = recursive_merge_sort(array2)
  
  merge_sort(sorted_array1, sorted_array2)  
end

def time_scheduler(array)
  # write your code here
  tuple_array = []
  array.each_slice(2) {|tuple| tuple_array << tuple}
  sorted = recursive_merge_sort(tuple_array)
  sorted_and_filtered = []
  sorted.each_with_index do |el, idx|
    sorted_and_filtered << el if idx === 0
    current_slot = sorted_and_filtered[-1]
    if current_slot[1] <= el[0]
      sorted_and_filtered << el
    end
  end
  sorted_and_filtered
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]

p time_scheduler([3, 8, 1, 2, 3, 9, 1, 5, 4, 5, 8, 14])
