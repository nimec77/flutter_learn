class MaximumMultiple {
  int maxMultiple(int divisor, int bound) {
    return (bound ~/ divisor) * divisor;
  }

  int maxMultipleBest(int divisor, int bound) {
    return bound - bound % divisor;
  }
}