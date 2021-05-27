class ADisguisedSequence {
  int fcn(int n) {
    final u = <BigInt>[BigInt.one, BigInt.two];
    for (var i = 2; i <= n; i++) {
      u.add(BigInt.from(6) * u[i - 2] * u[i - 1] ~/ (BigInt.from(5) * u[i - 2] - u[i - 1]));
    }
    return u[n].toInt();
  }

  int fcnBest(int n) => 1 << n;
}
