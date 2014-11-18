def brute_force!(a,b)
  arr = []
  (2..a).each do |base|
    (2..b).each do |exp|
      arr << base ** exp
    end
    arr.uniq!
  end
  arr.length
end
