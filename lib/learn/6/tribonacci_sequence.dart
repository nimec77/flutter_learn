class TribonacciSequence {
  List<num> tribonacci(List<num> signature, int n) {
    var prevs = [...signature];
    for (var i = 0; i < n; i++) {
      prevs.add(prevs.skip(i).reduce((value, element) => value + element));
    }
    return prevs.take(n).toList();
  }
}
