import 'package:flutter_learn/learn/7/vowel_count.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Sample tests', () {
    final vowelCount = VowelCount();
    expect(vowelCount.getCount('bcdfghjklmnpqrstvwxy'), equals(0));
    expect(vowelCount.getCount('abcde'), equals(2));
    expect(vowelCount.getCount('aeiou'), equals(5));
    expect(vowelCount.getCount('abracadabra'), equals(5));
  });
}