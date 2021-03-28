class CircleOfNumbers {
  int circleOfNumbers(int n, int fst) {
    final opposite = fst + n ~/ 2;
    return opposite >= n ? opposite - n : opposite;
  }

  int circleOfNumbersBest(int n, int fst) {
    return (fst + n ~/ 2) % n;
  }
}
