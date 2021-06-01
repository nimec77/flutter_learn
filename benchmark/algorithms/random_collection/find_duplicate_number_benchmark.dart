// ignore_for_file: avoid_print

import 'dart:math';

import 'package:benchmark/benchmark.dart';
import 'package:flutter_learn/learn/algorithms/find_duplicate_number.dart';

void main() {
  late final Random random;
  late final FindDuplicateNumber findDuplicateNumber;
  const length = 100000000;
  late final int result;
  late final List<int> nums;

  setUpAll(() {
    random = Random(42);
    findDuplicateNumber = FindDuplicateNumber();
    result = random.nextInt(length);
    nums = List.generate(length, (index) => index)
      ..add(result)
      ..shuffle(random);
  });

  benchmark('find duplicate number test by HashMap', () {
    findDuplicateNumber.findDuplicateByHash(nums);
  });

  // benchmark("find duplicate number test by Floyd's Tortoise and Hare", () {
  //   findDuplicateNumber.findDuplicateByTortoiseAndHare(nums);
  // });
}