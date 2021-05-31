class TreeNode {
  TreeNode(this.value);

  final int value;
  TreeNode? left;
  TreeNode? right;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is TreeNode && other.value == value;
  }
}
