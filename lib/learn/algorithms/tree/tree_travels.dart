import 'dart:collection';

import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';

class TreeTravels<T, S extends TreeNode<T>> {
  List<T> travelPreOrderRecursive(S tree) => _preOrderRecursive(tree).toList();

  Iterable<T> _preOrderRecursive(TreeNode<T>? node) sync* {
    if (node == null) {
      return;
    }
    yield node.value;
    yield* _preOrderRecursive(node.left);
    yield* _preOrderRecursive(node.right);
  }

  List<T> travelPreOrderIterative(S tree) => _preOrderIterative(tree).toList();

  Iterable<T> _preOrderIterative(TreeNode<T> treeNode) sync* {
    final stack = Queue<TreeNode<T>>()..add(treeNode);

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

  List<T> travelInOrderRecursive(S tree) => _inOrderRecursive(tree).toList();

  Iterable<T> _inOrderRecursive(TreeNode<T>? node) sync* {
    if (node == null) {
      return;
    }
    yield* _inOrderRecursive(node.left);
    yield node.value;
    yield* _inOrderRecursive(node.right);
  }

  List<T> travelInOrderIterative(S tree) => _inOrderIterative(tree).toList();

  Iterable<T> _inOrderIterative(TreeNode<T> tree) sync* {
    final stack = Queue<TreeNode<T>>();
    TreeNode<T>? node = tree;
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

  List<T> travelPostOrderRecursive(S tree) => _postOrderRecursive(tree).toList();

  Iterable<T> _postOrderRecursive(TreeNode<T>? node) sync* {
    if (node == null) {
      return;
    }
    yield* _postOrderRecursive(node.left);
    yield* _postOrderRecursive(node.right);
    yield node.value;
  }

  List<T> travelPostOrderIterative(S tree) => _postOrderIterative(tree).toList();

  Iterable<T> _postOrderIterative(TreeNode<T> tree) sync* {
    final stack1 = Queue<TreeNode<T>>()..add(tree);
    final list2 = <TreeNode<T>>[];

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

  List<T> travelLevelOrderIterative(S tree) => _levelOrderIterative(tree).toList();

  Iterable<T> _levelOrderIterative(TreeNode<T> tree) sync* {
    final queue = Queue<TreeNode<T>>()..add(tree);

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

  T maximum(TreeNode<T> tree) {
    var node = tree;
    while(node.right != null) {
      node = node.right!;
    }
    return node.value;
  }
}
