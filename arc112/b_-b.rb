##できていない

b, c = gets.chomp.split(' ').map(&:to_i)
result = 0

if
if 2*b <= c
  result = c + 2*b - 1
end

p result