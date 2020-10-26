def happyLadybugs(b)
  # 1. Full board results in unmovable ladybugs. (Doesn't have '_')
  # 2.
  b_hash = Hash.new
  result = ''
  for el in b.split('')
      # p b_hash[el]
      if b_hash[el]
          b_hash[el] += 1
      else
          b_hash[el] = 1
      end
  end
  return 'NO' if !b_hash['_'] 
  b_hash.each_pair do |key, value| 
      if key != '_' && value == 1
          result = 'NO'
      else
          result = 'YES'
      end    
  end
  p b_hash
  return result
end