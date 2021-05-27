class PrimesInNumbers {
  String primeFactors(int n) {
    final primes = <String>[];
    var lst = n;
    for (var number = 2; number <= lst; number++) {
      var count = 0;
      while (lst % number == 0) {
        count++;
        lst ~/= number;
      }
      if (count == 0) {
        continue;
      }
      primes.add(count > 1 ? '($number**$count)' : '($number)');
    }

    return primes.join();
  }

  String primeFactorsBest(int n) {
    final primes = StringBuffer();
    var lst = n;
    for (var number = 2; number <= lst; number++) {
      var count = 0;
      while (lst % number == 0) {
        count++;
        lst ~/= number;
      }
      if (count == 0) {
        continue;
      }
      primes.write(count > 1 ? '($number**$count)' : '($number)');
    }

    return primes.toString();
  }
}
