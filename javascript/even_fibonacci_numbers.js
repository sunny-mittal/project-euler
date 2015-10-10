/* Intuition: There is certainly a better way to do this, but because the Fibonacci sequence blows up so rapidly, it only requires computing 33 numbers of the sequence, selecting the evens, and summing them. */

var fib = require('./helpers/fibonacci')

function sum_even_fibs(max) {
  var sum = 0, curr
  for (var i = 3; i < Infinity; i++) {
    curr = fib(i)
    if (curr <= max) {
      if (curr % 2 === 0) sum += curr
    }
    else break
  }
  return sum
}

module.exports = sum_even_fibs
