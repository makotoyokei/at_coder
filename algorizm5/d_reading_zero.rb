n = gets.chomp.to_i
arr = []

n.times do |i|
  arr << gets.chomp
end

puts arr.sort { |x,y|
  if x.to_i == y.to_i
   (-1) * (x.count("0") <=> y.count("0"))
  else
    x.to_i <=> y.to_i
  end
}

