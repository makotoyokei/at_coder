a, b = gets.chomp.split(' ').map(&:to_f)
puts 100 * (1 - b/a)