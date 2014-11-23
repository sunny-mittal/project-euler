class String
  def pandigital?
    sorted = split('').sort!
    length = sorted.length
    sorted.delete('0')
    return false unless sorted == sorted.uniq &&
      sorted.length == length
    true
  end

  def all_unique?
    length == split('').uniq.length
  end
end
