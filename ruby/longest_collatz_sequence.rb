def generate_sequence(n)
  count = 0
  loop do  
    count += 1
    case
    when n == 1 then break
    when n.odd? then n = 3 * n + 1
    when n.even? then n /= 2
    end
  end
  count
end

def find_longest(limit)
  max = seed = 0
  (1...limit).step(2) do |test|
    if (x = generate_sequence(test)) > max
      max, seed = x, test
    end
  end
  [max, seed]
end
