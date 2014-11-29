require 'prime'

def find_number
  n = 210 # smallest number to have 4 distinct factors
  loop do
    return n if n.prime_division.length == 4 && consecutives(n)
    n += 1
  end
end

def consecutives(n)
  (n + 1..n + 3).each do |n|
    n.prime_division.length == 4 ? next : (return false)
  end
  true
end
