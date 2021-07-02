class NiceArray {
  bool isNice(List<int> arr) {
    if (arr.isEmpty) {
      return false;
    }
    var list = [...arr]..sort();
    list = list.toSet().toList();
    if (list.length < 2) {
      return false;
    }
    if (list.length.isOdd && list.last != list[list.length - 2] + 1) {
      return false;
    }
    for (var i = 0; i < list.length - 1; i += 2) {
      if (list[i] != list[i + 1] - 1) {
        return false;
      }
    }

    return true;
  }

  bool isNiceBest(List<int> arr) {
    return arr.isNotEmpty && arr.every((x) => arr.any((y) => (y - x).abs() == 1));
  }
}
