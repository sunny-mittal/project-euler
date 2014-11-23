# I know nested loops like this are terrible practice, but each one breaks after only a few iterations and the running time is very fast (under 100ms in a VM)

def combinations(sum)
  count, total = 0, 0
  two_p, one_p, half, twenty, dime, nickle, two = 
    200, 100, 50, 20, 10, 5, 2
  loop do
    before_one_p = total
    loop do
      before_halfs = total
      loop do
        before_twentys = total
        loop do
          before_dimes = total
          loop do
            before_nickles = total
            loop do
              before_twos = total
              loop do
                total <= sum ? count += 1 : break
                total += two
              end
              total = before_twos
              break if (total += nickle) > sum
            end
            total = before_nickles
            break if (total += dime) > sum
          end
          total = before_dimes
          break if (total += twenty) > sum
        end
        total = before_twentys
        break if (total += half) > sum
      end
      total = before_halfs
      break if (total += one_p) > sum
    end
    total = before_one_p
    break if (total += two_p) > sum
  end
  count
end
