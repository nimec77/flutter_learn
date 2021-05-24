import 'package:flutter_learn/learn/6/pyramid_array.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final pyramidArray = PyramidArray();
  void tester(int n, List<List<int>> exp) => test('Testing for $n', () => expect(pyramidArray.pyramid(n), equals(exp)));
  group('basic tests', () {
    tester(0, []);
    tester(1, [
      [1]
    ]);
    tester(2, [
      [1],
      [1, 1]
    ]);
    tester(3, [
      [1],
      [1, 1],
      [1, 1, 1]
    ]);
  });
}
