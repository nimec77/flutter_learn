class LateRide {
  int lateRide(int n) {
    final hours = n ~/ 60;
    final minutes = n % 60;

    return hours ~/ 10 + hours % 10 + minutes ~/ 10 + minutes % 10;
  }
}
