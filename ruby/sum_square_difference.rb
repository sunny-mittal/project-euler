def sum_of_squares(limit)
  (1..limit).reduce(0) { |acc, n| acc + n**2 }
end

def square_of_sums(limit)
  (1..limit).reduce(:+)**2
end

def abs_difference(limit)
  (sum_of_squares(limit) - square_of_sums(limit)).abs
end
