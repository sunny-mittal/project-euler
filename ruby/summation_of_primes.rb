def prime_summation(limit)
  (1...limit).collect { |x| x if prime? x } .compact.reduce(:+)
end

def prime?(n)
  return false if n == 1
  return true if n == 2
  (2..Math.sqrt(n)).each do |i|
    return false if n % i == 0
  end
  true
end
