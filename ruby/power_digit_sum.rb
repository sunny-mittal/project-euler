def sum_of_digits(num)
  num_array.to_s.each_char.reduce(0) { |acc, c| acc + c.to_i }
end
