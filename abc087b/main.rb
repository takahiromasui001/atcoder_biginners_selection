count_500 = gets.to_i
count_100 = gets.to_i
count_50 = gets.to_i
target = gets.to_i

result_count = 0

(0..count_500).each do |i|
  (0..count_100).each do |j|
    (0..count_50).each do |k|
      total = 500 * i + 100 * j + 50 * k
      result_count += 1 if total == target
    end
  end
end

puts result_count
