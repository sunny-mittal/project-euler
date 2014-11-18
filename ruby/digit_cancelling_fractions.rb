# UGLIEST CODE EVER!!!

arr = []

(10..98).each do |num|
  (num + 1..99).each do |den|
    num_array = num.to_s.split('')
    den_array = den.to_s.split('')
    next if (num_array - den_array).length == 2 || num % 10 == 0 && den % 10 == 0
    val = num / den.to_f
    common = (num_array & den_array).first
    num_array.delete(common)
    den_array.delete(common)
    num_array << common if num_array.empty?
    den_array << common if den_array.empty?
    numer = num_array.first.to_i
    denom = den_array.first.to_i
    n = numer / numer.gcd(denom)
    d = denom / numer.gcd(denom)
    next if denom == 0
    arr << [n, d] if numer / denom.to_f == val
  end
end

puts arr.to_s
