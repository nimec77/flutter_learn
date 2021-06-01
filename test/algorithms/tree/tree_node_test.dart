import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';
import 'package:flutter_learn/learn/algorithms/tree/tree_travels.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final TreeTravels treeTravels;
  late final TreeNode<int> tree;
  const resultPreOrder = [2, 7, 2, 6, 5, 11, 5, 9, 4];
  const resultInOrder = [2, 7, 5, 6, 11, 2, 5, 4, 9];
  const resultPostOrder = [2, 5, 11, 6, 7, 4, 9, 5, 2];
  const resultLevelOrder = [2, 7, 5, 2, 6, 9, 5, 11, 4];

  setUpAll(() {
    treeTravels = TreeTravels();
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

  group('Tree pre-order travels', () {
    test('Pre-order travel recursive', () {
      expect(treeTravels.travelPreOrderRecursive(tree), resultPreOrder);
    });

    test('Pre-order travel iterative', () {
      expect(treeTravels.travelPreOrderIterative(tree), resultPreOrder);
    });
  });

  group('Tree in-order travel', () {
    test('In-order travel recursive', () {
      expect(treeTravels.travelInOrderRecursive(tree), resultInOrder);
    });

    test('In-order travel iterative', () {
      expect(treeTravels.travelInOrderIterative(tree), resultInOrder);
    });
  });

  group('Tree post-order travels', () {
    test('Post-order travel recursive', () {
      expect(treeTravels.travelPostOrderRecursive(tree), resultPostOrder);
    });

    test('Post-order travel iterative', () {
      expect(treeTravels.travelPostOrderIterative(tree), resultPostOrder);
    });
  });

  group('Level-order travel', () {
    test('Level-order travel iterative', () {
      expect(treeTravels.travelLevelOrderIterative(tree), resultLevelOrder);
    });
  });
}
