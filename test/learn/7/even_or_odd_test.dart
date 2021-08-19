import 'package:flutter_learn/learn/7/even_or_odd.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final evenOrOdd = EvenOrOdd();
  group('Basic tests', () {
    test("testing for '12'", () => expect(evenOrOdd.evenOrOdd('12'), 'Even is greater than Odd'));
    test("testing for '123'", () => expect(evenOrOdd.evenOrOdd('123'), 'Odd is greater than Even'));
    test("testing for '112'", () => expect(evenOrOdd.evenOrOdd('112'), 'Even and Odd are the same'));
  });
}
