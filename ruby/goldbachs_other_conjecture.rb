require 'prime'
require_relative './lib/extended_numbers'

def smallest_odd
  n = 3
  primes = []
  loop do
    if n.prime?
      primes << n
    else
      poss = primes.each do |p|
        break 0 if Math.sqrt((n - p) / 2.0).int?
      end
      return n unless poss == 0
    end
    n += 2
  end
end
