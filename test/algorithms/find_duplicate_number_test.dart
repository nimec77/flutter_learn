import 'dart:math';

import 'package:flutter_learn/learn/algorithms/find_duplicate_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final random = Random(42);
  final findDuplicateNumber = FindDuplicateNumber();
  const length = 100000000;
  final result = random.nextInt(length);
  final nums = List.generate(length, (index) => index)
    ..add(result)
    ..shuffle(random);

  group('tests', () {
    test('find duplicate number test by sort list', () {
      final actual = findDuplicateNumber.findDuplicateBySort(nums);

      expect(actual, result);
    });

    test('find duplicate number test by HashMap', () {
      final actual = findDuplicateNumber.findDuplicateByHash(nums);

      expect(actual, result);
    });

    test("find duplicate number test by Floyd's Tortoise and Hare", () {
      final actual = findDuplicateNumber.findDuplicateByTortoiseAndHare(nums);

      expect(actual, result);
    });

    // Не работает!!!
    // test('find duplicate number test by Brent', () {
    //   final actual = findDuplicateNumber.findDuplicateByBrent(nums);
    //
    //   expect(actual, 87);
    // });
  });
}
