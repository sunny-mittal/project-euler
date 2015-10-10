function find_primes(n) {
  var res = []
  for (var i = 2; i <= Math.sqrt(n);) {
    if (n % i === 0) {
      res.push(i)
      while (n % i === 0) n /= i
    }
    i += i === 2 ? 1 : 2
  }
  if (n !== 1) res.push(n)
  return res
}

module.exports = find_primes
