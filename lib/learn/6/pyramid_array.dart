class PyramidArray {
  List<List<int>> pyramid(int n) {
    final result = <List<int>>[];

    for (int i = 1; i <= n; i++) {
      result.add(List.filled(i, 1));
    }

    return result;
  }

  List<List<int>> pyramidBest(int n) {
    return List.generate(n, (index) => List.filled(index + 1, 1));
  }
}
