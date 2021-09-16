import 'package:flutter_learn/learn/7/word_values.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final wordValues = WordValues();
  group('Fixed tests', () {
    test('Testing for ["codewars", "abc", "xyz"]',
            () => expect(wordValues.wordValue(['codewars', 'abc', 'xyz']), equals([88, 12, 225])));
    test('Testing for ["abc abc", "abc abc", "abc", "abc"]',
            () => expect(wordValues.wordValue(['abc abc', 'abc abc', 'abc', 'abc']), equals([12, 24, 18, 24])));
    test('Testing for ["abc", "abc", "abc", "abc"]',
            () => expect(wordValues.wordValue(['abc', 'abc', 'abc', 'abc']), equals([6, 12, 18, 24])));
    test('Testing for ["abcdefghijklmnopqrstuvwxyz", "stamford bridge", "haskellers"]',
            () => expect(wordValues.wordValue(['abcdefghijklmnopqrstuvwxyz', 'stamford bridge', 'haskellers']),
                equals([351, 282, 330])));
    test('Testing for ["i love coding", "better than pizza", "i got this"]',
            () => expect(wordValues.wordValue(['i love coding', 'better than pizza', 'i got this']), equals([115, 382, 321])));
    test('Testing for ["mercury", "venus", "earth mars", "jupiter saturn", "uranus neptune"]',
            () => expect(wordValues.wordValue(["mercury", "venus", "earth mars", "jupiter saturn", "uranus neptune"]),
                equals([103, 162, 309, 768, 945])));
    test('Testing for ["a cup", "some tea", "more coffee", "one glass"]',
            () => expect(wordValues.wordValue(['a cup', 'some tea', 'more coffee', 'one glass']),
                equals([41, 156, 273, 368])));
    test('Testing for ["a", "e", "i", "o", "u", "the end"]',
            () => expect(wordValues.wordValue(['a', 'e', 'i', 'o', 'u', 'the end']), equals([1, 10, 27, 60, 105, 336])));
    test('Testing for ["coding", "better pizza", "i got this too"]',
            () => expect(wordValues.wordValue(['coding', 'better pizza', 'i got this too']), equals([52, 296, 471])));
  });
}
