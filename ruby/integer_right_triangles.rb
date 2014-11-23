# a + b + c <= 1000
# a ** 2 + b ** 2 = c ** 2
# a < b < c

def find_ps
  ps = []
  (1..292).each do |a|
    limit_b = 585 - a
    (a + 1..limit_b).each do |b|
      limit_c = 1000 - (a + b)
      (b + 1..limit_c).each do |c|
        break if c ** 2 > a ** 2 + b ** 2
        ps << (a + b + c) if (a ** 2 + b ** 2 == c ** 2)
      end
    end
  end
  h = Hash.new(0)
  ps.each { |p| h[p] += 1 }
  h.sort { |x, y| x[1] <=> y[1] } .last[0]
end
