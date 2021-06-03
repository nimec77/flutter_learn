// ignore_for_file: avoid_print

import 'dart:collection';

import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';

class TreeBinary<T extends Comparable<T>> {
  TreeBinary({TreeNode<T>? root}) : _root = root;

  TreeNode<T>? _root;

  bool get isEmpty => _root == null;

  bool get isNotEmpty => _root != null;

  TreeNode<T> get root {
    TreeElementError.checkNotEmpty(this);
    return _root!;
  }

  TreeNode<T> insert(T value) {
    final node = TreeNode<T>(value);

    TreeNode<T>? y;
    var x = _root;

    while (x != null) {
      y = x;
      if (node.value.compareTo(x.value) == -1) {
        x = x.left;
      } else {
        x = x.right;
      }
    }

    if (y == null) {
      _root = node;
    } else if (node.value.compareTo(y.value) == -1) {
      y.left = node;
    } else {
      y.right = node;
    }

    return node;
  }

  List<T> travelPreOrderRecursive() => _preOrderRecursive(root).toList();

  Iterable<T> _preOrderRecursive(TreeNode<T>? node) sync* {
    if (node == null) {
      return;
    }
    yield node.value;
    yield* _preOrderRecursive(node.left);
    yield* _preOrderRecursive(node.right);
  }

  List<T> travelPreOrderIterative() => _preOrderIterative(root).toList();

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

  List<T> travelInOrderRecursive() => _inOrderRecursive(_root).toList();

  Iterable<T> _inOrderRecursive(TreeNode<T>? node) sync* {
    if (node == null) {
      return;
    }
    yield* _inOrderRecursive(node.left);
    yield node.value;
    yield* _inOrderRecursive(node.right);
  }

  List<T> travelInOrderIterative() => _inOrderIterative(_root!).toList();

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

  List<T> travelPostOrderRecursive() => _postOrderRecursive(_root).toList();

  Iterable<T> _postOrderRecursive(TreeNode<T>? node) sync* {
    if (node == null) {
      return;
    }
    yield* _postOrderRecursive(node.left);
    yield* _postOrderRecursive(node.right);
    yield node.value;
  }

  List<T> travelPostOrderIterative() => _postOrderIterative(_root!).toList();

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

  List<T> travelLevelOrderIterative() => _levelOrderIterative(_root!).toList();

  Iterable<T> _levelOrderIterative(TreeNode<T> tree) sync* {
    final queue = Queue<TreeNode<T>>()..add(tree);

    while (queue.isNotEmpty) {
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

  T maximum() {
    TreeElementError.checkNotEmpty(this);
    var node = _root;
    while (node!.right != null) {
      node = node.right!;
    }
    return node.value;
  }

  T minimum() {
    TreeElementError.checkNotEmpty(this);
    var node = _root;
    while (node!.left != null) {
      node = node.left;
    }
    return node.value;
  }

  TreeNode<T> searchTree(T value) {
    final result = _searchHelper(root, value);

    return result ?? (throw TreeElementError.noElement());
  }

  TreeNode<T>? _searchHelper(TreeNode<T>? node, T value) {
    if (node == null || value == node.value) {
      return node;
    }

    if (value.compareTo(node.value) == -1) {
      return _searchHelper(node.left, value);
    } else {
      return _searchHelper(node.right, value);
    }
  }

  String printTree() {
    final sb = StringBuffer()..write(root.value);
    const pointerRight = '└──';
    final pointerLeft = root.right != null ? '├──' : '└──';

    _printHelper(root.left, sb, '', pointerLeft, root.right != null);
    _printHelper(root.right, sb, '', pointerRight, false);

    return sb.toString();
  }

  void _printHelper(TreeNode<T>? node, StringBuffer sb, String padding, String pointer, bool hasRightSibling) {
    if (node != null) {
      sb..write('\n')..write(padding)..write(pointer)..write(node.value);

      final paddingBuffer = StringBuffer(padding);
      if (hasRightSibling) {
        paddingBuffer.write('|  ');
      } else {
        paddingBuffer.write('   ');
      }

      final paddingForBoth = paddingBuffer.toString();
      const pointerRight = '└──';
      final pointerLeft = node.right != null ? '├──' : '└──';

      _printHelper(node.left, sb, paddingForBoth, pointerLeft, node.right != null);
      _printHelper(node.right, sb, paddingForBoth, pointerRight, false);
    }
  }
}

abstract class TreeElementError {
  static void checkNotEmpty(TreeBinary tree) {
    if (tree.isEmpty) {
      noElement();
    }
  }

  static StateError noElement() => StateError('No element');

  static StateError noParent() => StateError('No parent');

  static StateError noGrandparent() => StateError('No grandparent');

  static StateError noUncle() => StateError('No uncle');
}
