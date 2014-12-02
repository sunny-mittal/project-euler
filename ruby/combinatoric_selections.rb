require_relative './lib/extended_numbers'

def find_greater_than(limit)
  count = 0
  n = 23
  (n..100).each do |n|
    (0..n).each do |k|
      count += 1 if n.choose(k) > limit
    end
  end
  count
end
