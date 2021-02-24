n = gets.chomp!.to_i
quotient = n
result = []
loop do
  quotient, extra = quotient.divmod(36) 
  result.unshift(extra)  
  break if  quotient == 0
end

convert_to_alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

result.map! do |i|
  i < 10 ? i : i =  convert_to_alphabet[i- 10]
end

puts result.join('')