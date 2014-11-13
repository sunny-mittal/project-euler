def nth_prime(n)
  test = 1
  loop do
    n -= 1 if prime? test
    break if n == 0
    (test == 1 || 2) ? test += 1 : test += 2
  end
  test
end

def prime?(n)
  return false if n == 1 || (n.even? && n != 2)
  return true if n == 2
  (3..Math.sqrt(n)).step(2) do |x|
    return false if n % x == 0
  end
  true
end

puts nth_prime(10001)
