target = gets.chomp
length = target.length
parts = ['dream', 'dreamer', 'erase', 'eraser']

def compare_part(part, target)
  comp_target = target.slice(0, part.length)

  comp_target == part
end

def check_target(current_target, parts)
  parts.each do |part|
    next unless compare_part(part, current_target)

    next_target = current_target.slice(part.length..-1)
    return true if next_target.length.zero?

    return true if check_target(next_target, parts)
  end

  false
end

puts check_target(target, parts) ? 'YES' : 'NO'
