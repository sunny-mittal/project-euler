/* Intuition: The sum of all multiples of 3 or 5 less than a given number is represented by an arithmetic sum of multiples of 3 and multiples of 5 with multiples of 15 removed (because they are multiples of both 3 and 5 and would be counted twice) */

var sum = require('./helpers/sums').arithmetic_sum

function mult_3_5(exclusive_upper_bound) {
  var upto = exclusive_upper_bound - 1
  var threes = (upto / 3) ^ 0
  var fives = (upto / 5) ^ 0
  var fifteens = (upto / 15) ^ 0

  return sum(threes, 3) + sum(fives, 5) - sum(fifteens, 15)
}

module.exports = mult_3_5
