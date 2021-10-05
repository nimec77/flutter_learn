import 'package:flutter_learn/learn/7/alphabetical_addition.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final alphabeticalAddition = AlphabeticalAddition();
  group('Fixed tests', () {
    test('1', () {
      expect(alphabeticalAddition.addLetters(['a']), 'a');
      expect(alphabeticalAddition.addLetters(['z']), 'z');
      expect(alphabeticalAddition.addLetters(['z', 'a']), 'a');
      expect(alphabeticalAddition.addLetters(['a', 'b', 'c']), 'f');
    });
  });
}
