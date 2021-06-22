import 'package:flutter_learn/learn/7/number_in_strings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final numbersInString = NumberInStrings();

  group('Fixed tests', () {
    test('Testing for gh12cdy695m1', () => expect(numbersInString.solve('gh12cdy695m1'), equals(695)));
    test('Testing for 2ti9iei7qhr5', () => expect(numbersInString.solve('2ti9iei7qhr5'), equals(9)));
    test('Testing for vih61w8oohj5', () => expect(numbersInString.solve('vih61w8oohj5'), equals(61)));
    test('Testing for f7g42g16hcu5', () => expect(numbersInString.solve('f7g42g16hcu5'), equals(42)));
    test('Testing for lu1j8qbbb85', () => expect(numbersInString.solve('lu1j8qbbb85'), equals(85)));
  });
}