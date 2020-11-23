def encryption(string_to_encrypt)
  without_text = string_to_encrypt.gsub(/\s+/,"")
  length = without_text.length
  square_root = Math.sqrt(length)
  row = square_root.floor(0)
  column = square_root.ceil(0)
  while column * row <= length
    row += 1
  end
  encrypted_array = Array.new(column, '')

  string_to_encrypt.split('').each_with_index do |char, index|
    encrypted_array[index % column] += char 
  end

  encrypted_array.join(' ')
end

puts encryption('haveaniceday')