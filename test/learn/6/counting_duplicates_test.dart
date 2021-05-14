import 'package:flutter_learn/learn/6/counting_duplicated.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('add', () {
    final countingDuplicates = CountingDuplicated();
    expect(countingDuplicates.duplicateCountBest('aa'), equals(1));
    expect(countingDuplicates.duplicateCountBest(''), equals(0));
    expect(countingDuplicates.duplicateCountBest('abcde'), equals(0));
    expect(countingDuplicates.duplicateCountBest('aabbcde'), equals(2));
    expect(countingDuplicates.duplicateCountBest('aabBcde'), equals(2));
    expect(countingDuplicates.duplicateCountBest('Indivisibility'), equals(1));
  });
}
