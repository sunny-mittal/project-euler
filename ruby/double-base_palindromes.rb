def palindromes(limit)
  (1...limit).select do |x|
    str = x.to_s
    str == str.reverse
  end
end

x = palindromes(1000000).select do |x|
  str = x.to_s(2)
  str == str.reverse
end.reduce(:+)
