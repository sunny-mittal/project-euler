# ONLY works with odd dimensions!

def diagonal_numbers(dimension)
  sum = 1
  (3..dimension).step(2) do |d|
    sum += 4 * d ** 2 - 6 * d + 6
  end
  sum
end
