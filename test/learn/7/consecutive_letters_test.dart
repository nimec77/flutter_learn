import 'package:flutter_learn/learn/7/consecutive_letters.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final consecutiveLetters = ConsecutiveLetters();

  group('Basic tests', () {
    test("testing for 'abc'", () => expect(consecutiveLetters.solve('abc'), true));
    test("testing for 'abd'", () => expect(consecutiveLetters.solve('abd'), false));
    test("testing for 'dabc'", () => expect(consecutiveLetters.solve('dabc'), true));
    test("testing for 'abbc'", () => expect(consecutiveLetters.solve('abbc'), false));
  });
}
