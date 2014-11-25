require 'benchmark'

def calculate_product
  result = ''
  i = 1
  loop do
    result << i.to_s
    break if result.length >= 1000000
    i += 1
  end
  (0..6).reduce(1) { |acc, index| acc * result[10 ** index - 1].to_i }
end
