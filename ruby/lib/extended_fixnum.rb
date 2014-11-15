class Fixnum
  def choose(k)
    self.factorial / (k.factorial * (self - k).factorial)
  end

  def factorial
    (1..self).reduce(:*) || 1
  end
end
