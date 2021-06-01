import 'dart:collection';

import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';

class TreeTravels {
  List<int> travelPreOrderRecursive(TreeNode<int> tree) => _preOrderRecursive(tree).toList();

  Iterable<int> _preOrderRecursive(TreeNode<int>? node) sync* {
    if (node == null) {
      return;
    }
    yield node.value;
    yield* _preOrderRecursive(node.left);
    yield* _preOrderRecursive(node.right);
  }

  List<int> travelPreOrderIterative(TreeNode<int> tree) => _preOrderIterative(tree).toList();

  Iterable<int> _preOrderIterative(TreeNode<int> treeNode) sync* {
    final stack = Queue<TreeNode<int>>()..add(treeNode);

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

  List<int> travelInOrderRecursive(TreeNode<int> tree) => _inOrderRecursive(tree).toList();

  Iterable<int> _inOrderRecursive(TreeNode<int>? node) sync* {
    if (node == null) {
      return;
    }
    yield* _inOrderRecursive(node.left);
    yield node.value;
    yield* _inOrderRecursive(node.right);
  }

  List<int> travelInOrderIterative(TreeNode<int> tree) => _inOrderIterative(tree).toList();

  Iterable<int> _inOrderIterative(TreeNode<int> tree) sync* {
    final stack = Queue<TreeNode<int>>();
    TreeNode<int>? node = tree;
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

  List<int> travelPostOrderRecursive(TreeNode<int> tree) => _postOrderRecursive(tree).toList();

  Iterable<int> _postOrderRecursive(TreeNode<int>? node) sync* {
    if (node == null) {
      return;
    }
    yield* _postOrderRecursive(node.left);
    yield* _postOrderRecursive(node.right);
    yield node.value;
  }

  List<int> travelPostOrderIterative(TreeNode<int> tree) => _postOrderIterative(tree).toList();

  Iterable<int> _postOrderIterative(TreeNode<int> tree) sync* {
    final stack1 = Queue<TreeNode<int>>()..add(tree);
    final list2 = <TreeNode<int>>[];

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

  List<int> travelLevelOrderIterative(TreeNode<int> tree) => _levelOrderIterative(tree).toList();

  Iterable<int> _levelOrderIterative(TreeNode<int> tree) sync* {
    final queue = Queue<TreeNode<int>>()..add(tree);

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
