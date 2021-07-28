class SpecialNumber {
  String specialNumber(int n) {
    return n.toString().split('').map(int.parse).every((number) => number <= 5) ? 'Special!!' : 'NOT!!';
  }

  String specialNumberBest(int n) {
    return RegExp(r'^[0-5]+$').hasMatch(n.toString()) ? 'Special!!' : 'NOT!!';
  }
}
