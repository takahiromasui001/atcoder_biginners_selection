nums = []
nums << gets(chomp: true).to_i
nums += gets.split(' ').map(&:to_i)
c = gets(chomp: true)
puts "#{nums.sum} #{c}"
