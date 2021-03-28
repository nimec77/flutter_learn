class Incrementer {
  List<int> incrementer(List<int> nums) {
    final mapNums = nums.asMap();

    return mapNums.map((index, value) => MapEntry(index, (value + index + 1) % 10)).values.toList();
  }

  List<int> incrementerBest(List<int> nums) {
    return nums.asMap().entries.map((entry) => (entry.value + entry.key + 1) % 10).toList();
  }
}
