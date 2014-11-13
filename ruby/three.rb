def prime_factorization(n)
  results = []
  if n.even?
    results << 2
    n /= 2 until n.odd?
  end

  (3..n).step(2) do |i|
    if n % i == 0
      results << i
      n /= i until n % i != 0
    end
    break if i > n
  end
  results.join(', ')
end

puts prime_factorization 600851475143
