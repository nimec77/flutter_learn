class TidyNumber {
  bool tidyNumber(int n) {
    final lst = n.toString().split('').map(int.parse);
    var digit = 0;
    for (final next in lst) {
      if (digit > next) {
        return false;
      }
      digit = next;
    }

    return true;
  }

  bool tidyNumberBest(int n) {
    final result = n.toString().split('')..sort();
    return result.join() == n.toString();
  }
}
