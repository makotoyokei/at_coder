##不明

n = gets.chomp.to_i

n.times do |i|
  x,y,p,q = gets.chomp.split(' ').map(&:to_i)
  train_arr = []
  taro_arr = []
  result = 0
  1.step(by: 1) do |i|
    if 2*(x+y) == p+q && x % (p+q) != p % (p+q)
      puts "infinity"
      break
    else
      train_arr << ((x+(x+y)*2*(i-1))...(x+y+(x+y)*2*(i-1))).to_a
      taro_arr << ((p+(p+q)*(i-1))...(p+q+(p+q)*(i-1))).to_a
      if (train_arr.flatten & taro_arr.flatten).any?
        puts (train_arr.flatten & taro_arr.flatten).min
        break
      end
    end
  end
end