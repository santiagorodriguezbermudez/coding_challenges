def picking_numbers(a)
  counting_hash = {}
  a.each do |element|
    if counting_hash[element]
      counting_hash[element] += 1
    else
      counting_hash[element] = 1
    end
  end
  # puts 'This is the counting hash'
  # puts counting_hash
  # puts counting_hash.sort_by {|key, value| value}.reverse.to_s
  
  # Find the most popular item and second most popular item
  sorted_counting_hash = counting_hash.sort_by {|key, value| value}.reverse
  most_popular_item, number_of_times_most_popular_item = sorted_counting_hash[0][0], sorted_counting_hash[0][1]
  second_most_popular_item, number_of_times_second_most_popular_item = sorted_counting_hash[1][0], sorted_counting_hash[1][1] if sorted_counting_hash.length > 1

  # Find the most popular addition
  sum_popular = find_upper_and_lower(counting_hash, most_popular_item, number_of_times_most_popular_item)
  sum_second_popular = find_upper_and_lower(counting_hash, second_most_popular_item, number_of_times_second_most_popular_item)  if sorted_counting_hash.length > 1

  if sorted_counting_hash.length > 1
    sum_popular > sum_second_popular ? sum_popular : sum_second_popular
  else
    sum_popular
  end
    
end

def find_upper_and_lower(counting_hash, value, number_of_times)
  lower_limit = counting_hash[value - 1] ? counting_hash[value - 1] : 0
  upper_limit = counting_hash[value + 1] ? counting_hash[value + 1] : 0
  sum = 0
  if upper_limit > lower_limit
    sum = number_of_times + upper_limit
  else
    sum = number_of_times + lower_limit
  end
end

a = [66, 66, 66, 66]
puts picking_numbers(a)

b = [1, 2, 2, 3, 1, 2]
puts picking_numbers(b)