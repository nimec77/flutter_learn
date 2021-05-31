import 'package:flutter_learn/learn/7/number_plus_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Sample Tests', () {
    final numberPlusNumber = NumberPlusNumber();
    expect(numberPlusNumber.add(16, 18), equals(214));
    expect(numberPlusNumber.add(2,11), equals(13));
    expect(numberPlusNumber.add(0,1), equals(1));
    expect(numberPlusNumber.add(0,0), equals(0));
  });
}