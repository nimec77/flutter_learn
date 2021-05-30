import 'package:flutter_learn/learn/algorithms/radnom/random_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test 10 elements', () {
    final randomList = RandomList(10);
    final result = [4, 3, 1, 2, 8, 7, 0, 4, 1];

    expect(randomList.toList(), result);
  });

  test("test a 1,000,000,000 element for a match via the 'elementAt' method and the 'last' property", () {
    const result = 256938588;
    const index = 1000000000;
    final randomList = RandomList(1000000000);
    expect(randomList.elementAt(index - 1), result);
    expect(randomList.last, result);
    expect(randomList[index - 1], result);
  });

}