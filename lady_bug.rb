def lady_bug(b)
  count_hash = {}
  b.split('').each do |char|
    if count_hash[char]
      count_hash[char] += 1
    else
      count_hash[char] = 1
    end
  end
  count_hash
end

puts lady_bug('RBY_YBR')