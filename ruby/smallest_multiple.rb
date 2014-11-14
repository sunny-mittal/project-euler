def lcm(limit)
  product = 1
  (1..limit).each do |n|
    product *= largest_multiple_of_prime n, limit
  end
  product
end

def largest_multiple_of_prime(n, limit)
  return 1 if n == 1 || n.composite?
  i = 1
  loop do
    break if n**i >= limit
    i += 1
  end
  n**(i - 1)
end

class Fixnum
  def composite?
    (2..Math.sqrt(self)).each do |x|
      return true if self % x == 0
    end
    false
  end
end
