def brute_force
  (1..1000).reduce do |acc, n|
    acc += n ** n
  end .to_s[-10..-1]
end
