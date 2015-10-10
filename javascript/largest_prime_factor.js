var find_primes = require('./helpers/find_primes')

function largest_prime_factor(n) {
  return find_primes(n).pop()
}

module.exports = largest_prime_factor
