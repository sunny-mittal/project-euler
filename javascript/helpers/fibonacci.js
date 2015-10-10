function fib(n) {
  var first = 1, second = 1, tmp
  if (n <= 2) return 1
  for (var i = 3; i <= n; i++) {
    second = first + second
    first = second - first
  }
  return second
}

module.exports = fib
