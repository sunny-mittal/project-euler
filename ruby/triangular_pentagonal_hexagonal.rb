require_relative './lib/extended_numbers'

def find_next
  n = 287
  loop do
    poss = n.triangular
    return poss if poss.pentagonal?
    n += 2
  end
end
