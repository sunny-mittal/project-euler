def mult_of_3_and_5(limit)
  (3...limit).inject(0) do |sum, n|
    (n % 3 == 0 || n % 5 == 0) ? sum + n : sum
  end
end
