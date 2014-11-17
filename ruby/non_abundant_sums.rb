# This is terribly inefficient (though it works) and I'll revise it at a later time

@abundant_numbers = []

def proper_divisors(n)
  list = []
  (1..n / 2).each do |div|
    list << div if n % div == 0
  end
  list
end

def sum_of_divisors(n)
  proper_divisors(n).reduce(:+)
end

def find_abundant_numbers
  (12..28123).each do |n|
    @abundant_numbers << n if sum_of_divisors(n) > n
  end
end

find_abundant_numbers

sums = @abundant_numbers.map { |x| 2 * x }

sums += @abundant_numbers.combination(2).to_a.map do |(x,y)|
          x + y
        end
sums.uniq!.sort!.select! { |x| x <= 28123 }

puts (1..28123).select { |x| !sums.include? x } .reduce(:+)

