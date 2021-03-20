class CountByX {
  List<int> countBy(int x, int n) {
    return List.generate(n, (index) => (index + 1) * x);
  }
}
