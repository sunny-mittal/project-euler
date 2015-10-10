module.exports = {
  arithmetic_sum: function (n, mult) {
    return (mult || 1) * n * (n + 1) / 2
  },
  arithmetic_sum_range: function(i, j, mult) {
    return this.arithmetic_sum(j, mult) - this.arithmetic_sum(j - i, mult)
  }
}
