import 'package:flutter_learn/learn/7/nice_array.dart';
import 'package:flutter_test/flutter_test.dart';

void testing(List<int> arr, exp) {
  final niceArray = NiceArray();
  test('Testing for [${arr.join(', ')}]', () {
    expect(niceArray.isNice(arr), equals(exp));
  });
}

void main() {
  group('Fixed tests', () {
    // testing([0, 2, 19, 4, 4], false);
    testing([3, 2, 1, 0], true);
    testing([3, 2, 10, 4, 1, 6], false);
    testing([1, 1, 8, 3, 1, 1], false);
    testing([0, 1, 2, 3], true);
    testing([1, 2, 3, 4], true);
    testing([0, -1, 1], true);
    testing([0, 2, 3], false);
    testing([0], false);
    testing([], false);
    testing([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], true);
    testing([0, 1, 3, -2, 5, 4], false);
    testing([0, -1, -2, -3, -4], true);
    testing([1, -1, 3], false);
    testing([1, -1, 2, -2, 3, -3, 6], false);
    testing([2, 2, 3, 3, 3], true);
    testing([1, 1, 1, 2, 1, 1], true);
    testing([1, 2, 7, 8], true);
  });
}
