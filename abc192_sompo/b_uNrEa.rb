odd, even = gets.chomp.split('').partition.each_with_index { |i, j| j % 2 == 0 }

if odd.join('').match(/^[a-z]*$/) && even.join('').match(/^[A-Z]*$/)
  puts "Yes"
else
  puts "No"
end