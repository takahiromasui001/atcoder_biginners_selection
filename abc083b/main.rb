x, a, b = gets.split(' ').map(&:to_i)

result = 0

(1..x).each do |i|
  tmp = i.to_s.split('').map(&:to_i).sum
  result += i if (a..b).include?(tmp)
end

puts result