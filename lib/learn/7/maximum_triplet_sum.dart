class MaximumTripletSum {
  int maxTriSum(nums) {
    final list = (nums as List<int>).toSet().toList()..sort((a, b) => b.compareTo(a));
    return list.getRange(0, 3).reduce((value, element) => value + element);
  }
}
