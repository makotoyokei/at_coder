## 計算量多い
# n = gets.chomp.to_i

# if n<= 3
#   puts n
# else
#   a = n % 2 == 0 ? n/2 : n/3
#   b = n % 2 == 0 ? Math.log2(n).floor : Math.log3(n).floor
#   arr = []

#   2.upto(a) do |i|
#     2.upto(b) do |j|
#       break if i ** j > n
#         arr << i**j
#     end
#   end
#   puts n - arr.uniq.length
# end

# n = gets.chomp.to_i
# result = 0
# uniq = 0
# if n<= 3
#   puts n
# else
#   a = Math.sqrt(n).floor
#   x = 0
#   2.upto(a) do |i|
#     x = Math.log(n, i)
#     puts x
#     puts x.to_i
#     puts x -x.to_i != 0.0
#     next if x - x.to_i != 0.0
#     result += 1 
#   end
#   puts n - ((result - uniq)/2 + uniq)
# end

n = gets.chomp.to_i

if n<= 3
  puts n
else
  a = Math.sqrt(n).floor
  b = n/a
  arr = []

  2.upto(a) do |i|
    2.upto(b) do |j|
      break if i ** j > n
        arr << i**j
    end
  end
  puts n - arr.uniq.length
end