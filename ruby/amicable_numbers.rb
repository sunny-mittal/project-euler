require 'prime'

@memo = {}

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

def amicable(n)
  return if n.prime? || n == 1 || @memo[n]
  sod_n = sum_of_divisors n
  sod_sod_n = sum_of_divisors sod_n
  if sod_n != n && sod_sod_n == n
    @memo[n] = true
    @memo[sod_n] = true
  end
end

def calc_sum(limit)
  (1...limit).each do |n|
    amicable n
  end
  @memo.keys.reduce(:+)
end
