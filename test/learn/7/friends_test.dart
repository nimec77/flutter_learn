import 'package:flutter_learn/learn/7/friends.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final friends = Friends();
  void tester(int n, int exp) => test('Testing for $n', () => expect(friends.friends(n), equals(exp)));
  group('example tests', () {
    tester(0, 0);
    tester(1, 0);
    tester(2, 0);
  });
}
