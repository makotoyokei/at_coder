##計算量多い

# l, r = gets.chomp.split(' ').map(&:to_i)

# result = 0
# if r < 2*l
#   result = 0
# else
#   (2*l..r).to_a.each do |i|
#     (l..r).to_a.each do |j|
#       next if i - j < l
#       p [i,j]
#       result += 1
#     end
#   end
# end

# puts result

# t = gets.chomp.to_i

# t.times do
#   l, r = gets.chomp.split(' ').map(&:to_i)

#   result = 0
#   if r < 2*l
#     result = 0
#   else
#     max = 0
#     min = 0
#     (2*l..r).to_a.each do |i|
#       max = i - l
#       min = l
#       result += max - min + 1
#     end
#   end

#   puts result
# end

t = gets.chomp.to_i

t.times do
  l, r = gets.chomp.split(' ').map(&:to_i)

  if r < 2*l
    result = 0
  else
    result = (1 + (r - 2*l + 1))*(r - 2*l+1)/2
  end

  puts result
end