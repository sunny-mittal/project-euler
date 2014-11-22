class Fixnum
  def fifth_power_sum
    to_s.split('').map(&:to_i).reduce(0) { |acc, n| acc + n ** 5}
  end
end

def upper_limit(power)
  max, n = 'longer than 1', 1
  until max.to_s.length == n - 1
    max = n * 9 ** power
    n += 1
  end
  max
end

def find_sum
  nums = []
  (2..upper_limit(5)).each do |n|
    nums << n if n == n.fifth_power_sum
  end
  nums.reduce(:+)
end
