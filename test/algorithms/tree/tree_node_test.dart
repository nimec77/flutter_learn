import 'package:flutter_learn/learn/algorithms/tree/tree_in_order.dart';
import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final TreeNode tree;
  const result = [2, 7, 5, 6, 11, 2, 5, 4, 9];

  setUpAll(() {
    final node2 = TreeNode(2);
    final node7 = TreeNode(7);
    final node6 = TreeNode(6);
    final node5 = TreeNode(5);
    final node9 = TreeNode(9);
    node6
      ..right = TreeNode(11)
      ..left = TreeNode(5);
    node7
      ..right = node6
      ..left = TreeNode(2);
    node9.left = TreeNode(4);
    node5.right = node9;
    node2
      ..right = node5
      ..left = node7;

    tree = node2;

  });

  test('In order travel recursive', () {
    final treeInOrder = TreeInOrder();

    expect(treeInOrder.travelRecursive(tree), result);
  });

  test('In order travel iterative', () {
    final treeInOrder = TreeInOrder();

    expect(treeInOrder.travelIterative(tree), result);
  });
}
