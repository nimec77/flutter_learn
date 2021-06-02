import 'package:flutter_learn/learn/algorithms/tree/tree_node.dart';

class BinaryNode<T> implements TreeNode<T> {
  BinaryNode(this.value);

  @override
  final T value;

  @override
  TreeNode<T>? left;

  @override
  TreeNode<T>? right;

}