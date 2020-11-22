def library_fine(d1, m1, y1, d2, m2, y2)
  fine = 0
  if y1 > y2
    fine = 10000
  elsif y1 < y2
    fine = 0
  elsif m1 > m2
    fine = 500 * (m1 - m2)
  elsif m1 < m2
    fine = 0
  elsif d1 > d2
    fine = 15 * (d1 - d2)
  end
  fine
end

puts library_fine(28, 2, 2015, 15, 4, 2015)
