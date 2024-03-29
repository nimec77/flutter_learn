class MaximumTripletSum {
  int maxTriSum(List<int> nums) {
    final list = nums.toSet().toList()..sort((a, b) => b.compareTo(a));
    return list.getRange(0, 3).reduce((value, element) => value + element);
  }
}
