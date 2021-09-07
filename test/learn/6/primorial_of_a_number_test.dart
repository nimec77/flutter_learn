import 'package:flutter_learn/learn/6/primorial_of_a_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final primorialOfANumber = PrimorialOfANumber();

  group('Basic tests', () {
    test('Testing for 3', () => expect(primorialOfANumber.numPrimorial(3), equals(30)));
    test('Testing for 4', () => expect(primorialOfANumber.numPrimorial(4), equals(210)));
    test('Testing for 5', () => expect(primorialOfANumber.numPrimorial(5), equals(2310)));
    test('Testing for 8', () => expect(primorialOfANumber.numPrimorial(8), equals(9699690)));
    test('Testing for 9', () => expect(primorialOfANumber.numPrimorial(9), equals(223092870)));
  });
}
