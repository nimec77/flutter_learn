class OddOnesOut {
  List<int> oddOnesOut(List<int> nums) {
    final result = List<int>.from(nums);
    final unique = result.toSet();

    for (final num in unique) {
      final odd = nums.where((element) => element == num).length.isOdd;
      if (odd) {
        result.removeWhere((element) => element == num);
      }
    }
    return result;
  }

  List<int> oddOnesOutBest(List<int> nums) {
    return nums.where((x) => nums.where((y) => y == x).length.isEven).toList();
  }
}