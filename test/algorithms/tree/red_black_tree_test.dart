import 'package:flutter_learn/learn/algorithms/tree/red_black_node.dart';
import 'package:flutter_learn/learn/algorithms/tree/red_black_tree.dart';
import 'package:flutter_learn/learn/algorithms/tree/tree_travels.dart';
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

    final treeTravel = TreeTravels<num, RedBlackNode<num>>();

    final actual = treeTravel.travelPreOrderRecursive(redBlackTree.root);
    print(actual);
  });
}
