class Fixnum
  def choose(k)
    (self - k + 1..self).reduce(:*) / k.factorial
  rescue NoMethodError => e
    1
  end

  def factorial
    (1..self).reduce(:*) || 1
  end

  def pentagonal
    self * (3 * self - 1) / 2
  end

  def pentagonal?
    ((1 + Math.sqrt(1 + 24 * self)) / 6.0).int?
  end

  def triangular
    self * (self + 1) / 2
  end

  def hexagonal?
    ((1 + Math.sqrt(1 + 8 * self)) / 4.0).int?
  end
end

class Float
  def int?
    self == self.round
  end
end
