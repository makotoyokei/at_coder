arr = gets.split(' ').map(&:to_i)

c = arr[2] % 4 == 0 ? 4 : arr[2] % 4 
b = arr[1] ** c % 4 == 0 ? 4 : arr[1] ** c % 4
a = arr[0] ** b

puts a.to_s.split('').last.to_i
