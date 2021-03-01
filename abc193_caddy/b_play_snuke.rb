n = gets.chomp.to_i
arr = []
result  = 0
tmp = []

n.times do |i|
  tmp = gets.chomp.split(' ').map(&:to_i)
  next if tmp[0] >= tmp[2]
  arr << tmp[1]
end

puts arr.empty? ? -1 : arr.min