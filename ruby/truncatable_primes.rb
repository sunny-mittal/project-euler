require 'prime'

class Fixnum
  def truncatable?
    str = to_s
    len = str.length - 1
    (0..len).each do |i|
      return false unless str[i..-1].to_i.prime? && str[0..(-i - 1)].to_i.prime?
    end
    true
  end
end

n, things = 11, []

loop do
  case n.to_s[0].to_i
  when 1, 4, 6 then n += 10 * (n.to_s.length - 1)
  end
  things << n if n.truncatable?
  break if things.length == 11
  n += 2
end

puts things.reduce(:+)
