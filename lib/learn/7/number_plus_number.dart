class NumberPlusNumber {
  int add(int num1, int num2) {
    int max;
    int min;
    if (num1 > num2) {
      max = num1;
      min = num2;
    } else {
      max = num2;
      min = num1;
    }
    final sum = <int>[];
    while (min > 0) {
      final n1 = min % 10;
      final n2 = max % 10;
      min ~/= 10;
      max ~/= 10;
      sum.add(n1 + n2);
    }
    var result = <int>[];
    if (max > 0) {
      result = [max, ...sum.reversed];
    } else {
      result = sum.reversed.toList();
    }
    if (result.isEmpty) {
      return 0;
    }

    return int.parse(result.join());
  }

  int addBest(int num1, int num2) {
    var result = '';
    var n1 = num1;
    var n2 = num2;

    while (n1 > 0 || n2 > 0) {
      final d1 = num1 % 10;
      final d2 = num2 % 10;
      n1 ~/= 10;
      n2 ~/= 10;
      result = '${d1 + d2}$result';
    }

    return result.isEmpty ? 0 : int.parse(result.toString());
  }
}
