import 'dart:collection';

import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';

class TreeInOrder {

  List<int> travelRecursive(TreeNode tree) {
    return inOrderRecursive(tree).toList();
  }
  
  Iterable<int> inOrderRecursive(TreeNode? node) sync* {
    if (node == null) {
      return;
    }
    yield* inOrderRecursive(node.left);
    yield node.value;
    yield* inOrderRecursive(node.right);
  }

  List<int> travelIterative(TreeNode tree) {
    return inOrderIterative(tree).toList();
  }

  Iterable<int> inOrderIterative(TreeNode tree) sync* {
    final stack = Queue<TreeNode>();
    TreeNode? node = tree;
    while(stack.isNotEmpty || node != null) {
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
}