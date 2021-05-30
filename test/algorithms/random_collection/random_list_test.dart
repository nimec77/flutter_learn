
import 'package:flutter_learn/learn/algorithms/random_collection/random_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test 10 elements', () {
    final randomList = RandomList(10);
    const result = [5, 4, 3, 1, 2, 8, 7, 0, 4, 1];

    expect(randomList, result);
  });

  test("test a 1,000,000,000 element for a match via the 'elementAt' method and the 'last' property", () {
    const result = 256938588;
    const index = 1000000000;
    final randomList = RandomList(1000000000);
    expect(randomList.elementAt(index - 1), result);
    expect(randomList.last, result);
    expect(randomList[index - 1], result);
  });

  test('take even element from 20 list size', () {
    final randomList = RandomList(20);
    const result = [4, 2, 8, 0, 4, 10, 18, 16];

    final actual = randomList.where((element) => element.isEven).toList();

    expect(actual, result);
  });

  test('30 length list to set', () {
    final randomList = RandomList(30);
    const result = {15, 24, 3, 1, 12, 28, 7, 10, 25, 20, 5, 9, 18, 11, 26, 27, 21, 16, 22, 8, 19};

    final actual = randomList.toSet();

    expect(actual, result);
  });
}
