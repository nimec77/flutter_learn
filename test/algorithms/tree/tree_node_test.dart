import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';
import 'package:flutter_learn/learn/algorithms/tree/tree_binary.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final TreeBinary<num> treeBinary;
  late final TreeNode<int> tree;
  const resultPreOrder = [2, 7, 2, 6, 5, 11, 5, 9, 4];
  const resultInOrder = [2, 7, 5, 6, 11, 2, 5, 4, 9];
  const resultPostOrder = [2, 5, 11, 6, 7, 4, 9, 5, 2];
  const resultLevelOrder = [2, 7, 5, 2, 6, 9, 5, 11, 4];

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
    treeBinary = TreeBinary<num>(root: tree);
  });

  group('Tree pre-order travels', () {
    test('Pre-order travel recursive', () {
      expect(treeBinary.travelPreOrderRecursive(), resultPreOrder);
    });

    test('Pre-order travel iterative', () {
      expect(treeBinary.travelPreOrderIterative(), resultPreOrder);
    });
  });

  group('Tree in-order travel', () {
    test('In-order travel recursive', () {
      expect(treeBinary.travelInOrderRecursive(), resultInOrder);
    });

    test('In-order travel iterative', () {
      expect(treeBinary.travelInOrderIterative(), resultInOrder);
    });
  });

  group('Tree post-order travels', () {
    test('Post-order travel recursive', () {
      expect(treeBinary.travelPostOrderRecursive(), resultPostOrder);
    });

    test('Post-order travel iterative', () {
      expect(treeBinary.travelPostOrderIterative(), resultPostOrder);
    });
  });

  group('Level-order travel', () {
    test('Level-order travel iterative', () {
      expect(treeBinary.travelLevelOrderIterative(), resultLevelOrder);
    });

    group('Tree search', () {
      test('Find maximum', () {
        expect(treeBinary.maximum(), 9);
      });

      test('Find minimum', () {
        expect(treeBinary.minimum(), 2);
      });
    });

    group('Ascending sequence tests', () {
      test('Adding an ascending sequence', () {
        final tree = TreeBinary<num>();

        for (final element in List.generate(10, (index) => index)) {
          tree.insert(element);
        }

        // ignore: avoid_print
        print(tree.printTree());
      });
    });

  });
}
