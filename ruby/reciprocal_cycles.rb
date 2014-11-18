require 'prime'

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
  prime_candidates = (1...limit).select { |x| x.prime? }
  prime_candidates.reverse_each do |n|
    break if n < max
    max = [max, cycle_length(n)].max
  end
  max
end
