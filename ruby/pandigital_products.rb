class String
  def pandigital?
    sorted = split('').sort!
    length = sorted.length
    sorted.delete('0')
    return false unless sorted == sorted.uniq &&
      sorted.length == length
    true
  end
end

def sum_of_products
  results = []
  range = (1..9).to_a + (12..98).to_a
  range.each do |multiplier|
    make_range(multiplier).each do |multiplicand|
      product = multiplicand * multiplier
      if (multiplicand.to_s + multiplier.to_s + product.to_s).pandigital?
        results << product
      end
    end
  end
  results.uniq.reduce(:+)
end

def make_range(multiplier)
  r = multiplier.to_s.split('').map(&:to_i)
  if r.length == 1
    (1234...r[0] * 1000).to_a + ((r[0] + 1) * 1000..9876).to_a
  else
    (123...r.min * 100).to_a + ((r.min + 1) * 100..r.max * 100).to_a + ((r.max + 1) * 100..987).to_a
  end
end

p sum_of_products
