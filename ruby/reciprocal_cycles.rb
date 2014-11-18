def cycle_length(n)
  remainders, remainder = [], 1
  loop do
    remainder %= n
    break if remainders.include? remainder
    remainders << remainder
    remainder *= 10
  end
  remainders.length
end

def find_longest_cycle(limit)
  max = 0
  (limit - 1).downto(1) do |n|
    break if n < max
    max = [max, cycle_length(n)].max
  end
  max
end
