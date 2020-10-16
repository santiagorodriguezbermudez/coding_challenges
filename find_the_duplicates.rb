def duplicates(arr1, arr2)
  # write your code here
  arr1Hash = Hash.new
  arr1.map do |el|
    if arr1Hash[el]
      arr1Hash[el] += 1
    else
      arr1Hash[el] = 1
    end
  end

  final = []
  arr2.each do |el|
    if arr1Hash[el] > 0
      arr1Hash[el] -= 1
    else
      final << el
    end
  end

  final.sort
end

p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]

p duplicates([10, 3, 17, 11, 5, 10, 3, 9, 11, 33, 41, 22, 8, 17, 3, 11, 35, 52, 73, 88], [22, 3, 10, 11, 33, 41, 11, 5, 3, 17, 10, 3, 9, 11, 52, 73, 88, 35, 10, 11, 3, 8, 17, 8])