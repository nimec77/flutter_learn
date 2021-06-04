import 'dart:math' as math;

import 'package:flutter_learn/learn/algorithms/random_collection/random_iterable.dart';
import 'package:flutter_learn/learn/algorithms/tree/red_black_tree.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tree = RedBlackTree<num>();
  const resultPreOrder = [6, 2, 2, 5, 4, 9, 7, 11];
  const resultDelete = [6, 2, 2, 5, 4, 11, 7];

  setUp(() {
    tree
      ..clear()
      ..insert(2)
      ..insert(7)
      ..insert(6)
      ..insert(11)
      ..insert(2)
      ..insert(5)
      ..insert(4)
      ..insert(9);
  });

  group('Test insert and delete from tree', () {
    test('Insert into Red-black tree', () {
      final actual = tree.travelPreOrderRecursive();

      expect(actual, resultPreOrder);
    });

    test('Delete from Red-black tree', () {
      tree.delete(9);

      expect(tree.travelPreOrderIterative(), resultDelete);
    });
  });

  group('Test search, min and max', () {
    test('Find element in tree', () {
      const value = 9;
      final actual = tree.searchTree(value);

      expect(actual.value, value);
    });

    test('Maximum in tree', () {
      const max = 11;
      final actual = tree.maximum();

      expect(actual, max);
    });

    test('Minimum in tree', () {
      const min = 2;
      final actual = tree.minimum();

      expect(actual, min);
    });
  });

  group('Ascending sequence tests', () {
    final length = math.pow(10, 7).toInt();
    final ascendTree = RedBlackTree<num>();
    for (final element in List.generate(length, (index) => index)) {
      ascendTree.insert(element);
    }

    test('Maximum in tree', () {
      final actual = ascendTree.maximum();

      expect(actual, length - 1);
    });

    test('Minimum in tree', () {
      final actual = ascendTree.minimum();

      expect(actual, 0);
    });

    test('Find random element in tree', () {
      final result = math.Random(42).nextInt(length);
      final actual = ascendTree.searchTree(result);

      expect(actual.value, result);
    });
  });

  group('Random sequence tests', () {
    final random = math.Random(42);
    final length = math.pow(10, 3).toInt();
    final randomTree = RedBlackTree<num>();
    final resultRandom = random.nextInt(length);
    final toRemoveLength = random.nextInt(length);
    final toRemove = RandomIterable(toRemoveLength);
    var resultMax = 0;
    var resultMin = length;
    for (final element in RandomIterable(length)) {
    // for (var element = 0; element < length; element++) {
      if (resultMax < element) {
        resultMax = element;
      }
      if (resultMin > element) {
        resultMin = element;
      }
      randomTree.insert(element);
    }

    test('Maximum in tree', () {
      final actual = randomTree.maximum();

      expect(actual, resultMax);
    });

    test('Minimum in tree', () {
      final actual = randomTree.minimum();

      expect(actual, resultMin);
    });

    test('Find random element in tree', () {
      final actual = randomTree.searchTree(resultRandom);

      expect(actual.value, resultRandom);
    });

    // Похоже удаление все же работает не корректно
    test('Random delete from tree', () {
      for (final element
          in toRemove.where((element) => element != resultMin && element != resultMax && element != resultRandom)) {
        randomTree.delete(element);
      }
      final min = randomTree.minimum();
      expect(min, resultMin);

      final max = randomTree.maximum();
      expect(max, resultMax);

      final actual = randomTree.searchTree(resultRandom);
      expect(actual.value, resultRandom);
    });
  });
}
