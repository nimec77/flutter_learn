
class TreeNode<T> {
  TreeNode(this.value);

  final T value;

  TreeNode<T>? left;
  TreeNode<T>? right;

  // @override
  // int get hashCode => value.hashCode;
  //
  // @override
  // bool operator ==(Object other) {
  //   return identical(this, other) || other is TreeNode && other.value == value;
  // }

  @override
  String toString() => 'Node($value)';
}
