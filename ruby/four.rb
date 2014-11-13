def largest_palindromic_product(digits)
  arr = []
  (10 ** digits - 1).downto(10 ** (digits - 1)) do |i|
    i.downto(10 ** (digits - 1)) do |j|
      product = i * j
      if product.to_s == product.to_s.reverse
        arr << product
        break
      end
    end
  end
  arr.sort.reverse[0]
end
