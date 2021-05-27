class FormTheMinimum {
  int minValue(List<int> arr) {
    arr.sort();
    return int.parse(arr.toSet().join());
  }
}