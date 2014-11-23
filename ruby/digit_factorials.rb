require_relative './lib/extended_fixnum'

class Fixnum
  def factorial_sum
    to_s.split('').map(&:to_i).reduce(0) { |acc, e| acc + e.factorial }
  end
end

def find_sum
  (3..2540160).select { |x| x == x.factorial_sum } .reduce(:+)
end
