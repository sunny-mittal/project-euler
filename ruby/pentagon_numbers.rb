require_relative './lib/extended_numbers'

def find_d
  n = 2
  loop do
    nth = n.pentagonal
    result = (n - 1).downto(1) do |m|
      mth = m.pentagonal
      diff, sum = nth - mth, nth + mth
      break [n, m, diff] if diff.pentagonal? && sum.pentagonal?
    end
    next n += 1 if result == n - 1
    return result
  end
end
