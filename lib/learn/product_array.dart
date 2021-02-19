class ProductArray {
  List<int> productArray(List<int> nums) {
    final maps = nums.asMap();

    final result = <int>[];
    maps.forEach((index, value) {
      final prev = nums[index];
      nums[index] = 1;
      result.add(nums.reduce((multi, element) => multi * element));
      nums[index] = prev;
    });
    return result;
  }

  List<int> productArrayBest(List<int> nums) {
    final total = nums.reduce((curr, next) => curr * next);
    return nums.map((v) => total ~/ v).toList();
  }
}
