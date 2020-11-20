def angry_professor(k, a)
  number_on_time = a.count{ |time| time <= 0}
  if number_on_time >= k
    'NO'
  else
    'YES'
  end
end

array = [26, 94, -95, 34, 67, -97, 17, 52, 1, 86]
puts angry_professor(7, array)
