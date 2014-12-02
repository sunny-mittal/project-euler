require 'prime'

def all_prime?(candidates)
  candidates.permutation(2).to_a.map(&:join).map(&:to_i).all?(&:prime?)
end

candidates = (Prime.entries(1000) - [2, 5]).combination(4).to_a
