import 'dart:collection';

import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';

class TreeTravels {
  List<int> travelPreOrderRecursive(TreeNode tree) => _preOrderRecursive(tree).toList();

  Iterable<int> _preOrderRecursive(TreeNode? node) sync* {
    if (node == null) {
      return;
    }
    yield node.value;
    yield* _preOrderRecursive(node.left);
    yield* _preOrderRecursive(node.right);
  }

  List<int> travelPreOrderIterative(TreeNode tree) => _preOrderIterative(tree).toList();

  Iterable<int> _preOrderIterative(TreeNode treeNode) sync* {
    final stack = Queue<TreeNode>()..add(treeNode);

    while (stack.isNotEmpty) {
      final node = stack.removeLast();
      yield node.value;
      if (node.right != null) {
        stack.add(node.right!);
      }
      if (node.left != null) {
        stack.add(node.left!);
      }
    }
  }

  List<int> travelInOrderRecursive(TreeNode tree) => _inOrderRecursive(tree).toList();

  Iterable<int> _inOrderRecursive(TreeNode? node) sync* {
    if (node == null) {
      return;
    }
    yield* _inOrderRecursive(node.left);
    yield node.value;
    yield* _inOrderRecursive(node.right);
  }

  List<int> travelInOrderIterative(TreeNode tree) => _inOrderIterative(tree).toList();

  Iterable<int> _inOrderIterative(TreeNode tree) sync* {
    final stack = Queue<TreeNode>();
    TreeNode? node = tree;
    while (stack.isNotEmpty || node != null) {
      if (node != null) {
        stack.add(node);
        node = node.left;
      } else {
        node = stack.removeLast();
        yield node.value;
        node = node.right;
      }
    }
  }

  List<int> travelPostOrderRecursive(TreeNode tree) => _postOrderRecursive(tree).toList();

  Iterable<int> _postOrderRecursive(TreeNode? node) sync* {
    if (node == null) {
      return;
    }
    yield* _postOrderRecursive(node.left);
    yield* _postOrderRecursive(node.right);
    yield node.value;
  }

  List<int> travelPostOrderIterative(TreeNode tree) => _postOrderIterative(tree).toList();

  Iterable<int> _postOrderIterative(TreeNode tree) sync* {
    final stack1 = Queue<TreeNode>()..add(tree);
    final list2 = <TreeNode>[];

    while (stack1.isNotEmpty) {
      final node = stack1.removeLast();
      list2.add(node);

      if (node.left != null) {
        stack1.add(node.left!);
      }
      if (node.right != null) {
        stack1.add(node.right!);
      }
    }

    for (final node in list2.reversed) {
      yield node.value;
    }
  }

  List<int> travelLevelOrderIterative(TreeNode tree) => _levelOrderIterative(tree).toList();

  Iterable<int> _levelOrderIterative(TreeNode tree) sync* {
    final queue = Queue<TreeNode>()..add(tree);

    while(queue.isNotEmpty) {
      final node = queue.removeFirst();
      yield node.value;

      if (node.left != null) {
        queue.add(node.left!);
      }
      if (node.right != null) {
        queue.add(node.right!);
      }
    }
  }
}
