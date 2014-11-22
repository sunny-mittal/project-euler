require 'prime'

primes = [2]
(3..1000).step(2) do |n|
  primes += [n, -n] if n.prime?
end

def quadratic(a, b, n)
  n ** 2 + a * n + b
end

lengths = {}

primes.each do |a|
  primes.each do |b|
    if a != b
      n = 0
      loop do
        if quadratic(a, b, n).prime?
          lengths[n] = a * b
          n += 1
        else
          break
        end
      end
    end
  end
end

key = lengths.keys.max
puts lengths[key]
