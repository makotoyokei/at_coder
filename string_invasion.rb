arr = gets.chomp!.split('')
result = 0
l = arr.length 
(l-2).downto(1) do |i|
  next if !(arr[i-1] == arr[i] && arr[i-1] != arr[i+1])
    result += l - i - 1 - arr[i+1...l].count(arr[i-1])
    arr[i+1...l] = Array.new(l-i-1){arr[i-1]}
end
puts result