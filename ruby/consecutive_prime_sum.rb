require 'prime'

primes = Prime.entries 1000000

sum_of_n_primes = [0]

primes.each do |p|
  sum_of_n_primes << sum_of_n_primes.last + p
end

longest_found = 0
result = 0

(primes.length - 1).times do |i|
  (i - longest_found - 1).downto(0) do |j|
    diff = sum_of_n_primes[i] - sum_of_n_primes[j]
    break if diff > 1000000
    if primes.index(diff)
      longest_found = i - j
      result = diff
    end
  end
end

puts result
