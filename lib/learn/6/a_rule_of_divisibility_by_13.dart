import 'dart:math' as math;

class ARuleOfDivisibilityBy13 {
  int thirt(int n) {
    final lst = n.toString().split('').map(int.parse).toList();
    final sequence = List<int>.generate(lst.length, (index) => (math.pow(10, index) % 13).toInt());

    int result = remainder(lst, sequence);
    int sum = 0;
    while (true) {
      sum = remainder(result.toString().split('').map(int.parse).toList(), sequence);
      if (result == sum) {
        break;
      }
      result = sum;
    }

    return sum;
  }

  int remainder(List<int> lst, List<int> sequence) {
    final right = [...lst].reversed.toList();

    int sum = 0;
    for (int i = 0; i < right.length; i++) {
      sum += right[i] * sequence[i];
    }

    return sum;
  }

  int thirtBest(int n) {
    int digit = n;
    const sequence = [1, 10, 9, 12, 3, 4];
    while (true) {
      int r = digit, q = -1, result = 0, i = 0;
      while (q != 0) {
        q = r ~/ 10;
        result += (r % 10) * sequence[i % 6];
        r = q;
        i++;
      }
      if (result == digit) {
        return result;
      }
      digit = result;
    }
  }
}
