@mapping = {}
@count = 0

('A'..'Z').each_with_index { |l, i| @mapping[l] = i + 1 }

def nth_triangular(n)
  return 1 if n == 1
  nth_triangular(n - 1) + n
end

def word_to_value(word)
  word.split('').reduce(0)  { |acc, l| acc + @mapping[l] }
end

def value_triangular?(m)
  start = 1
  loop do
    n = nth_triangular(start)
    if m == n then return true
    elsif m < n then return false
    end
    start += 1
  end
end

File.read('./extras/p042_words.txt').split(',').each do |word|
  @count += 1 if value_triangular? word_to_value(word.gsub /\"/, '')
end

puts @count
