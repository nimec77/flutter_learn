import 'package:flutter_learn/learn/5/buddy_pairs.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final buddyPairs = BuddyPairs();
  test('simple tests', () {
    expect(buddyPairs.buddy(46, 50), equals([48, 75]));
    expect(buddyPairs.buddy(10, 50), equals([48, 75]));
    expect(buddyPairs.buddy(319, 1000), equals(null));
    expect(buddyPairs.buddy(57345, 90061), equals([62744, 75495]));
    // expect(buddyPairs.buddy(62744, 90061), equals([62744, 75495]));
  });
}
