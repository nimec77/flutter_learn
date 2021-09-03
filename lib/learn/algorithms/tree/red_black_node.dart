
import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';

extension RedBlackCast<T extends Comparable<T>> on TreeNode<T>? {
  RedBlackNode<T>? cast() =>  this != null ? this as RedBlackNode<T>? : null;
}

enum NodeColor {
  black,
  red,
}

class RedBlackNode<T extends Comparable<T>> implements TreeNode<T>  {
  RedBlackNode(this.value, {this.color = NodeColor.red});

  @override
  T value;

  NodeColor color;

  RedBlackNode<T>? parent;

  RedBlackNode<T>? _left;

  @override
  RedBlackNode<T>? get left => _left;

  @override
  set left(TreeNode<T>? node) {
    _left = node.cast();
  }

  RedBlackNode<T>? _right;

  @override
  RedBlackNode<T>? get right => _right;

  @override
  set right(TreeNode<T>? node) {
    _right = node.cast();
  }

  @override
  String toString() => 'Node(value:$value, color:$color)';
}
