class BasesEverywhere {
  int baseFinder(List<dynamic> seq) {
    final digits = seq.cast<String>().expand((element) => element.split('')).map(int.parse);

    return digits.toSet().length;
  }

  int baseFinderBest(List<dynamic> seq) {
    return seq.join().split('').toSet().length;
  }
}
