class PlusMinus {
  int catchSignChange(List<int> arr) {
    if (arr.isEmpty) {
      return 0;
    }

    int result = 0;
    arr.skip(1).fold(sign(arr.first), (previousValue, element) {
      final item = sign(element);
      if (previousValue != item) {
        result++;
      }
      return item;
    });
    return result;
  }

  int sign(int n) => n >= 0 ? 1 : -1;
}