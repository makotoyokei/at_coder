n, k = gets.chomp.split(' ').map(&:to_i)


k.times do 
  tmp = n.to_s.split('').sort 
  g2 = tmp.join('').to_i
  g1 = tmp.reverse.join('').to_i

  n = g1 - g2

end

puts n