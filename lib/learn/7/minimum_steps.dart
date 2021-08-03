class MinimumSteps {
  int minimumSteps(List<int> nums, int value) {
    final list = [...nums]..sort();
    var sum = 0;
    for (var i = 0; i < list.length; ++i) {
      sum += list[i];
      if (sum >= value) {
        return i;
      }
    }

    return 0;
  }
}