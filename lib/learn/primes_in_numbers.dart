class PrimesInNumbers {
  String primeFactors(int n) {
    final primes = <String>[];
    int lst = n;
    for (int number = 2; number <= lst; number++) {
      int count = 0;
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
    int lst = n;
    for (int number = 2; number <= lst; number++) {
      int count = 0;
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
