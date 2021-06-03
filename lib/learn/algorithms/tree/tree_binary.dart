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

  List<T> travelInOrderRecursive() => _inOrderRecursive(root).toList();

  Iterable<T> _inOrderRecursive(TreeNode<T>? node) sync* {
    if (node == null) {
      return;
    }
    yield* _inOrderRecursive(node.left);
    yield node.value;
    yield* _inOrderRecursive(node.right);
  }

  List<T> travelInOrderIterative() => _inOrderIterative(root).toList();

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

  List<T> travelPostOrderRecursive() => _postOrderRecursive(root).toList();

  Iterable<T> _postOrderRecursive(TreeNode<T>? node) sync* {
    if (node == null) {
      return;
    }
    yield* _postOrderRecursive(node.left);
    yield* _postOrderRecursive(node.right);
    yield node.value;
  }

  List<T> travelPostOrderIterative() => _postOrderIterative(root).toList();

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

  List<T> travelLevelOrderIterative() => _levelOrderIterative(root).toList();

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
    var node = root;
    while (node.right != null) {
      node = node.right!;
    }
    return node.value;
  }

  T minimum() {
    TreeElementError.checkNotEmpty(this);
    var node = root;
    while (node.left != null) {
      node = node.left!;
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
    const pointerRight = '└──R:';
    final pointerLeft = root.right != null ? '├──L:' : '└──L:';

    final result = [root.value.toString()]
        .followedBy(_printHelper(root.left, '', pointerLeft, root.right != null))
        .followedBy(_printHelper(root.right, '', pointerRight, false));

    return result.join();
  }

  Iterable<String> _printHelper(TreeNode<T>? node, String padding, String pointer, bool hasRightSibling) sync* {
    if (node == null) {
      return;
    }
    yield ('\n');
    yield (padding);
    yield (pointer);
    yield (node.value.toString());

    final paddingBuffer = StringBuffer(padding);
    if (hasRightSibling) {
      paddingBuffer.write('|  ');
    } else {
      paddingBuffer.write('   ');
    }

    final paddingForBoth = paddingBuffer.toString();
    const pointerRight = '└──R:';
    final pointerLeft = node.right != null ? '├──L:' : '└──L:';

    yield* _printHelper(node.left, paddingForBoth, pointerLeft, node.right != null);
    yield* _printHelper(node.right, paddingForBoth, pointerRight, false);
  }

  void clear() {
    _root = null;
  }

  void delete(T value) {
    if (root.left == null && root.right == null) {
      if (root.value == value) {
        _root = null;
        return;
      } else {
        throw TreeElementError.noElement();
      }
    }
    final q = Queue<TreeNode<T>>()..add(root);
    TreeNode<T>? temp, keyNode;

    while (q.isNotEmpty) {
      temp = q.removeLast();

      if (temp.value == value) {
        keyNode = temp;
      }
      if (temp.left != null) {
        q.add(temp.left!);
      }
      if (temp.right != null) {
        q.add(temp.right!);
      }
    }

    if (keyNode != null) {
      final xNode = TreeNode(temp!.value);
      _deleteDeepest(temp);
      xNode
        ..right = keyNode.right
        ..left = keyNode.left;
      keyNode = null;
    }
  }

  void _deleteDeepest(TreeNode<T> delNode) {
    final q = Queue<TreeNode<T>>()..add(root);

    TreeNode<T>? temp;

    while (q.isNotEmpty) {
      temp = q.removeLast();
      if (temp == delNode) {
        temp = null;
        return;
      }
      if (temp.right != null) {
        if (temp.right == delNode) {
          temp.right = null;
          return;
        } else {
          q.add(temp.right!);
        }
      }
      if (temp.left != null) {
        if (temp.left == delNode) {
          temp.left = null;
          return;
        } else {
          q.add(temp.left!);
        }
      }
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
