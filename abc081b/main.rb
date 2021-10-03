_a = gets
nums = gets.split(' ').map(&:to_i)
count = 0

def judge(nums)
  nums.all?{ |i| i.even? } ? nums.map{|j| j / 2 } : -1
end

loop {
  nums = judge(nums)

  break if nums == -1
  count += 1
}

puts count
