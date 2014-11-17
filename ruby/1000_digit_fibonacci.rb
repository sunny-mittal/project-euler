def fibonacci(num_digits)
  n1, n2 = 1, 1
  term = 1
  n1, n2, term = n2, n1 + n2, term + 1 until n1.to_s.length >= num_digits
  term
end

p fibonacci 1000
