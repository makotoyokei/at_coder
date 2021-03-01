## 計算時間多すぎる
# x = gets.chomp.split('').map(&:to_i)
# m = gets.chomp.to_i
# d = x.max
# result = 0
# if x.length == 1
#   result = m > d ? 1 : 0
# else
#   (d+1).step(by: 1) do |i|
#     arr = x.reverse.map.with_index { |j,k| j*(i)**k  }
#     break if arr.sum > m
#     result += 1
#   end
# end

# puts result

## 二分探索にした
x = gets.chomp.split('').map(&:to_i)
m = gets.chomp.to_i
d = x.max
result = 0
if x.length == 1
  result = d <= m ? 1 : 0
elsif m == 1 || m < x.first
  result = 0
else
  start = d
  finish =10**30 ## (BigMath::E(10) ** ((1/(x.length-1).to_f)*Math.log(m/x.first))).ceil
  mid = (start + finish) / 2

  loop do
    break if finish - start <= 1

    f_x = x.reverse.map.with_index { | j, k | j*mid**k }.sum
    f_x <= m ? start = mid.floor : finish = mid.ceil
    
    mid = (start + finish) / 2
  end
  result = start - d
end

puts result
