require_relative './lib/extended_numbers'

class Fixnum
  def factorial_sum
    to_s.split('').map(&:to_i).reduce(0) { |acc, e| acc + ::Factorials[e] }
  end
end

Factorials = {}

(0..9).each do |n|
  Factorials[n] = n.factorial
end

def find_sum
  (3..2540160).select { |x| x == x.factorial_sum } .reduce(:+)
end

puts find_sum
