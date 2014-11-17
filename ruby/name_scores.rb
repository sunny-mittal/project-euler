@letters_array = [*'A'..'Z'].unshift(nil)

@names_array = File.open('./extras/p022_names.txt') do |f|
  f.read.gsub!(/\"/, '').chomp.split ','
end

@names_array.sort!.map! do |name|
  name.split('').reduce(0) { |acc, c| acc + @letters_array.index(c) }
end .unshift 1

total = @names_array.each_with_index.reduce(0) do |sum, (num, pos)| 
  sum + num * pos
end
