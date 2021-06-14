import 'package:flutter_learn/learn/8/find_the_first_non_consecutive_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final findTheFirstNonConsecutiveNumber = FindTheFirstNonConsecutiveNumber();
  test('a simple example', () {
    final first = findTheFirstNonConsecutiveNumber.firstNonConsecutive(const [1,2,3,4,6,7,8]);
    expect(first, equals(6));
  });
}


