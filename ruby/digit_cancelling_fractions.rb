# UGLIEST CODE EVER!!!

arr = []

(10..98).each do |num|
  (num + 1..99).each do |den|
    num_array, den_array = num.to_s.split(''), den.to_s.split('')
    next if (num_array - den_array).length == 2 || num % 10 == 0 && den % 10 == 0
    val = num / den.to_f
    common = (num_array & den_array).first
    [num_array, den_array].each do |arr|
      arr.delete(common)
      arr << common if arr.empty?
    end
    n, d = [num_array.first, den_array.first].map(&:to_i)
    gcd = n.gcd(d)
    n /= gcd
    d /= gcd
    next if d == 0
    arr << [n, d] if n / d.to_f == val
  end
end

puts arr.to_s
