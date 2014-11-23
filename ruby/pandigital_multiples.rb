require_relative './lib/extended_string'

max = ''

(9234..9437).each do |int|
  result = int.to_s
  result << (int * 2).to_s
  max = [max, result].max if result.pandigital?
end

puts max
