class GetTheMeanOfAnArray {
  int getAverage(List<int> arr) {
    final sum = arr.reduce((value, element) => value + element);

    return (sum / arr.length).floor();
  }

  int getAverageBest(List<int> arr) {
    return arr.reduce((value, element) => value + element) ~/ arr.length;
  }
}
