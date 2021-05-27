typedef FibonacciFunction = int Function(int);

class Fibonacci {
  int fibClassic(int n) {
    var prev = 0, next = 1;
    for (var i = 0; i < n; i++) {
      final temp = next;
      next += prev;
      prev = temp;
    }
    return prev;
  }

  int fibRecursion(int n) {
    return _recursion(n)[0];
  }

  List<int> _recursion(int n) {
    if (n == 0) {
      return const [0, 1];
    } else {
      final nextEntry = _recursion(n - 1);
      return [nextEntry[1], nextEntry[0] + nextEntry[1]];
    }
  }

  int _memorizeOldFib(int n) {
    if (n <= 1) {
      return n;
    } else {
      return fibMemorize(n - 1) + fibMemorize(n - 2);
    }
  }

  FibonacciFunction _memorize(FibonacciFunction f, int n) {
    final cache = <int, int>{};

    if (cache.containsKey(n)) {
      return (n) => cache[n]!;
    } else {
      return (n) {
        cache[n] = f(n);
        return cache[n]!;
      };
    }
  }

  int fibMemorize(int n) => _memorize(_memorizeOldFib, n)(n);

  List<List<int>> _mul(List<List<int>> a, List<List<int>> b) {
    final a1 = a[0][0];
    final a2 = a[0][1];
    final a3 = a[1][0];
    final a4 = a[1][1];

    final b1 = b[0][0];
    final b2 = b[0][1];
    final b3 = b[1][0];
    final b4 = b[1][1];

    return [
      [a1 * b1 + a2 * b3, a1 * b2 + a2 * b4],
      [a3 * b1 + a4 * b3, a3 * b2 + a4 * b4],
    ];
  }

  int fibMatrix(int n) {
    const matrix = [
      [0, 1],
      [1, 1],
    ];
    const id = [
      [1, 0],
      [0, 1],
    ];

    var result = id;

    final bits = n.toRadixString(2).split('');
    for (final bit in bits) {
      result = _mul(result, result);
      if (bit == '1') {
        result = _mul(result, matrix);
      }
    }

    return result[1][0];
  }

  List<int> fibGen(int n) {
    var prev = 0;
    var next = 1;

    return List.generate(n, (index) {
      if (index <= 1) {
        return index;
      }
      final temp = next;
      next = prev + next;
      prev = temp;

      return next;
    });
  }
}
