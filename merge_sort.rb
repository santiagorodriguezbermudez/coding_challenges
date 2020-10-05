def merge_sort(array1, array2)
  # write your code here
  sorted_array = []
  first_index = 0
  second_index = 0
  
  while (first_index <= (array1.length - 1)) && (second_index <= (array2.length - 1))
    p "i: #{first_index}, j:#{second_index}"
    p sorted_array.to_a
    if array1[first_index] < array2[second_index]
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

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]