require_relative './lib/extended_fixnum'

puts 100.factorial.to_s.each_char.reduce(0) { |acc, c| acc + c.to_i }
