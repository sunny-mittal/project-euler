require 'prime'

def four_digit_prime
  smallest, largest = 1000, 3339
  candidates = (smallest..largest).select do |c|
    c.prime? && (c + 3330).prime? && (c + 6660).prime?
  end
  candidates.each do |c|
    yield c if sequence c
  end
end

def sequence(c)
  perms = c.to_s.split('').permutation(4).to_a.map(&:join).uniq
  test = [c.to_s, (c + 3330).to_s, (c + 6660).to_s]
  (perms - test).length == perms.length - 3
end

four_digit_prime { |c| puts c }
