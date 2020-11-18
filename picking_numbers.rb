def picking_numbers(a)
  counting_hash = {}
  a.each do |element|
    if counting_hash[element]
      counting_hash[element] += 1
    else
      counting_hash[element] = 1
    end
  end
  puts 'This is the counting hash'
  puts counting_hash.sort_by {|key, value| key}.to_s
  # Find the most popular item
  most_popular_item, number_of_times_most_popular_item = counting_hash.max_by{|number, number_of_times_in_array| number_of_times_in_array}
  
  lower_most_popular = counting_hash[most_popular_item - 1] ? counting_hash[most_popular_item - 1] : 0
  upper_most_popular = counting_hash[most_popular_item + 1] ? counting_hash[most_popular_item + 1] : 0

  if upper_most_popular > lower_most_popular
    number_of_times_most_popular_item + upper_most_popular
  else
    number_of_times_most_popular_item + lower_most_popular
  end
  
end

a = [4, 6, 5, 3, 3, 1]
puts picking_numbers(a)

b = [1, 2, 2, 3, 1, 2]
puts picking_numbers(b)