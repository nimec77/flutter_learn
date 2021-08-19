class MinSum {
  int minSum(List<int> arr) {
    final list = [...arr]..sort();
    var sum = 0;
    final length = list.length - 1;
    for (var i = 0; i < list.length / 2; ++i) {
      sum += list[i] * list[length - i];
    }
    return sum;
  }

  int minSumBest(List<int> arr) {
    final list = [...arr]..sort();
    final length = list.length;
    var sum = 0;
    for (var left = 0, right = length; left < length / 2; ++left, --right) {
      sum += list[left] * list[right];
    }

    return sum;
  }
}
