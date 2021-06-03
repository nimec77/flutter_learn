import 'package:flutter_learn/learn/algorithms/tree/red_black_tree.dart';
import 'package:flutter_learn/learn/algorithms/tree/tree_binary.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Insert into Red-black tree', () {
    final redBlackTree = RedBlackTree<num>()
      ..insert(2)
      ..insert(7)
      ..insert(6)
      ..insert(11)
      ..insert(2)
      ..insert(5)
      ..insert(4)
      ..insert(9);

    final tree = TreeBinary<num>();

    final actual = tree.travelPreOrderRecursive();
    print(actual);

    final max = tree.maximum();
    print(max);
  });
}
