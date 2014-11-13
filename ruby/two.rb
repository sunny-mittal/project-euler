def sum_even_fibs(limit)
  fib_array = make_array(limit)
  p fib_array
  fib_array.inject(:+)
end

def make_array(limit)
  arr = []
  n1, n2 = 1, 2
  until n1 >= limit
    n1, n2 = n2, n1 + n2
    arr.push n1 if n1.even?
  end
  arr.flatten
end
