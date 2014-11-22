require 'prime'

class Fixnum
  def cycles
    result = [self]
    arr = self.to_s.split('')
    reps = arr.length - 1
    reps.times do
      arr << arr.shift
      result << arr.join.to_i
    end
    result
  end
end

class Array
  def no_evens_or_fives?
    each do |n|
      return false if n.even? || n == 5
    end
    true
  end
end

def isolate_primes(limit)
  arr = [2, 5]
  (3..limit).step(2) do |n|
    arr << n if n.prime? && n.to_s.split('').map(&:to_i).no_evens_or_fives?
  end
  arr
end

possibles = isolate_primes(10)

count = 0

possibles.each do |p|
  p.cycles.each do |c|
    unless c.prime?
      count -= 1
      break
    end
  end
  count += 1
end

