class String
  def palindrome?
    self == self.reverse
  end
end

def lychrel?(poss)
  iter = 0
  until iter == 50 || poss.to_s.palindrome? && iter > 0
    poss += poss.to_s.reverse.to_i
    iter += 1
  end
  iter == 50 ? true : false
end

count = 0
(1..10000).each { |i| count += 1 if lychrel? i }
puts count
