class NthSmallestElement {
  int nthSmallest(List<int> arr, int pos) {
    arr.sort();
    return arr[pos - 1];
  }
}
