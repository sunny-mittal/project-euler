require 'prime'

def triangular_number(n)
  (n * (n+1)) / 2
end

def more_than_n_divisors(n)
  i = 1
  loop do
    tri_num = triangular_number i
    divisors = tri_num.prime_division.reduce(1) do |acc, arr|
      acc * (arr[1] + 1)
    end
    return tri_num if divisors > n
    i += 1
  end
end
