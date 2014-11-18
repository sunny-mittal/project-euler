# ONLY works with odd dimensions!

def diagonal_numbers(dimension)
  sum = 1
  (3..dimension).step(2) do |d|
    sum += 2 * (2 * d **2 - (d - 1) * 3)
  end
  sum
end

puts diagonal_numbers 4
