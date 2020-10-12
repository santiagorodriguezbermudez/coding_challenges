def funWithAnagrams(text)
  
  sorted_text = text.map{|el| el.chars.sort.join}
  sorted_text.uniq

  final = []
  
  text.each do |el|
    if sorted_text.include?(el.chars.sort.join)
      if !final.map{|el| el.chars.sort.join}.uniq.include?(el.chars.sort.join)
        final << el 
      end
    end
  end
  final.sort
end

puts funWithAnagrams(["poke", "pkoe", "okpe", "ekop"])