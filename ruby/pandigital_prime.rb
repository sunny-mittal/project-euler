require 'prime'

def find_largest_pandigital_prime
  start = [7, 6, 5, 4, 3, 2, 1] # largest permutation
  start.permutation.each do |possibility|
    possibility = possibility.join.to_i
    if possibility.prime?
      p possibility
      break
    end
  end
end

find_largest_pandigital_prime
