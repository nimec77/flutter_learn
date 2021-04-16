class OnesAndZeros {
  int binaryArrayToNumber(List<int> arr) {
    return arr.reduce((value, element) => (value << 1) + element);
  }

  int binaryArrayToNumberBest(List<int> arr) {
    return int.parse(arr.join(), radix: 2);
  }
}
