import 'dart:math';

class DisariumNumber {
  String disariumNumber(int n) {
    final numbers = n.toString().split('').map(int.parse).toList();

    num disarium = 0;
    for (var i = 0; i < numbers.length; i++) {
      disarium += pow(numbers[i], i + 1);
    }
    return disarium.toInt() == n ? 'Disarium !!' : 'Not !!';
  }
}