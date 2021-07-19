class MaximumProduct {
  int adjacentElementsProduct(List<int> array) {
    var result = array[0] * array[1];
    for (var i = 1; i < array.length - 1; ++i) {
      final product = array[i] * array[i + 1];
      if (product > result) {
        result = product;
      }
    }

    return result;
  }
}