class ProductOfMaximumsOfArray {
  int maxProduct(List<int> arr, int size) {
    final list = [...arr]..sort((a, b) => b.compareTo(a));

    return list.take(size).reduce((value, element) => value * element);
  }
}
