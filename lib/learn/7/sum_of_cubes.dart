class SumOfCubes {
  int sumCubes(int n) {
    var result = 0;
    for (var i = 1; i <= n; ++i) {
      result += i * i * i;
    }

    return result;
  }

  int sumCubesBest(int n) {
    final x = n * (n + 1) >> 1;

    return x * x;
  }
}