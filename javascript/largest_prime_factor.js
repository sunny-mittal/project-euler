/* Intuition: None really. Finding prime factors is easy enough, though my algorithm is certainly sub-optimal, and then we just select the largest. */

var find_primes = require('./helpers/find_primes')

function largest_prime_factor(n) {
  return find_primes(n).pop()
}

module.exports = largest_prime_factor
