class FindTheFirstNonConsecutiveNumber {
  int? firstNonConsecutive(List<int> arr) {

    var prev = arr.first;
    for (final element in arr.skip(1)) {
      if (prev + 1 != element) {
        return element;
      }
      prev = element;
    }

    // ignore: avoid_returning_null
    return null;
  }
}