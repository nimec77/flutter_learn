class FlattenAndSortAnArray {
  List<int> flattenAndSort(List<List<int>> nums) {
    return nums.expand((element) => element).toList()..sort();
  }
}