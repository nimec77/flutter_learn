import 'package:flutter_learn/learn/7/plus_minus.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final plusMinus = PlusMinus();

  test('Basic Tests', () {
    expect(plusMinus.catchSignChange([1, 3, 4, 5]), equals(0));
    expect(plusMinus.catchSignChange([1, -3, -4, 0, 5]), equals(2));
    expect(plusMinus.catchSignChange([]), equals(0));
    expect(plusMinus.catchSignChange([-47,84,-30,-11,-5,74,77]), equals(3));
  });
}
