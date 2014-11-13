# I know this is terribly inefficient. Please don't run this with any large sums!

def pythagorean_triple(sum)
  (1..sum / 2).each do |i|
    (i..sum / 2).each do |j|
      (j..sum / 2).each do |k|
        return [i, j, k] if i ** 2 + j ** 2 == k ** 2 && i + j + k == sum
      end
    end
  end
end

puts pythagorean_triple(1000).reduce(:*)
