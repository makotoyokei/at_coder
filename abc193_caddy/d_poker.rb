## 要件通りに確立求められていない
# k = gets.chomp.to_i
# s = gets.chomp.chop.split('').map(&:to_i)
# t = gets.chomp.chop.split('').map(&:to_i)

# s_arr = []
# t_arr = []

# 9.times do |i|
#   s_arr[i] = s.count(i+1)
#   t_arr[i] = t.count(i+1)
# end

# result = 0
# s_sum = 0
# t_sum = 0
# all = 0
# 9.times do |i|
#   9.times do |j|
#     s_tmp = Marshal.load(Marshal.dump(s_arr))
#     t_tmp = Marshal.load(Marshal.dump(t_arr))
#     next if s_tmp[i] + t_tmp[i] == k || s_tmp[j] + t_tmp[j] == k
#     next if (s_tmp[i] + t_tmp[i] == k -1 || s_tmp[j] + t_tmp[j] == k - 1) && (i == j) 
#     all += 1
#     s_tmp[i] += 1
#     t_tmp[j] += 1
#     s_sum = 0
#     t_sum = 0
#     9.times do |k|
#       s_sum += (k+1) * 10 ** s_tmp[k]
#       t_sum += (k+1) * 10 ** t_tmp[k]
#     end
#     result += 1 if s_sum > t_sum
#   end
# end
# p result, all
# puts result / all.to_f


k = gets.chomp.to_i
s = gets.chomp.chop.split('').map(&:to_i)
t = gets.chomp.chop.split('').map(&:to_i)

s_arr = []
t_arr = []
all_arr = Array.new(9, k)

9.times do |i|
  s_arr[i] = s.count(i+1)
  t_arr[i] = t.count(i+1)
  all_arr[i] -= (s_arr[i] + t_arr[i])
end




result = 0
s_sum = 0
t_sum = 0
a = all_arr.inject {|x,y| x+=y}
all = a * (a-1)
9.times do |i|
  9.times do |j|
    next if all_arr[i] == 0 || all_arr[j] == 0
    s_tmp = Marshal.load(Marshal.dump(s_arr))
    t_tmp = Marshal.load(Marshal.dump(t_arr))
    s_tmp[i] += 1
    t_tmp[j] += 1
    s_sum = 0
    t_sum = 0
    9.times do |k|
      s_sum += (k+1) * 10 ** s_tmp[k]
      t_sum += (k+1) * 10 ** t_tmp[k]
    end
    if i == j
      next if all_arr[i] == 1
      result += all_arr[i] * (all_arr[i] - 1) if s_sum > t_sum 
    else
      result += all_arr[i] * all_arr[j] if s_sum > t_sum
    end
  end
end

puts result / all.to_f
