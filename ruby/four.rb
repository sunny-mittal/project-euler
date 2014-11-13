def largest_palindromic_product(digits_of_factors)
  largest = 0
  (10 ** digits_of_factors - 1).downto(10 ** (digits_of_factors - 1)) do |i|
    i.downto(10 ** (digits_of_factors - 1)) do |j|
      break if (product = i * j) < largest
      if product.to_s == product.to_s.reverse
        largest = [largest, product].max
        break
      end
    end
  end
  largest
end
