// typedef Comparator<T> = int Function(T a, T b);

enum NodeColor {
  black,
  red,
}

class RedBlackNode<T> {
  RedBlackNode(this.value, {this.color = NodeColor.red});

  final T value;

  NodeColor color;

  RedBlackNode<T>? parent;
  RedBlackNode<T>? left;
  RedBlackNode<T>? right;

  bool get hasGrandparent => parent != null && parent!.parent != null;

  RedBlackNode<T> get grandparent {
    if (!hasGrandparent) {
      LinkError.noGrandparent();
    }

    return parent!.parent!;
  }

  bool get hasUncle {
    if (!hasGrandparent) {
      return false;
    }
    if (parent == left && left != null) {
      return true;
    }

    if (right != null) {
      return true;
    }

    return false;
  }

  RedBlackNode<T> get uncle {
    if (!hasUncle) {
      LinkError.noUncle();
    }

    if (parent == left) {
      return right!;
    } else {
      return left!;
    }
  }

  void rotateLeft() {
    final pivot = right!..parent = parent;

    if (parent != null) {
      if (parent?.left == this) {
        parent?.left = pivot;
      } else {
        parent?.right = pivot;
      }

      right = pivot.left;
      if (pivot.left != null) {
        pivot.left?.parent = this;
      }

      parent = pivot;
      pivot.left = this;
    }
  }

  void rotateRight() {
    final pivot = left!..parent = parent;

    if (parent != null) {
      if (parent?.left == pivot) {
        parent?.left = pivot;
      } else {
        parent?.right = pivot;
      }
    }

    left = pivot.right;
    if (pivot.right != null) {
      pivot.right?.parent = this;
    }

    parent = pivot;
    pivot.right = this;
  }

  void _insertCase5() {
    parent!.color = NodeColor.black;
    grandparent.color = NodeColor.red;

    if (this == parent && parent == grandparent.left) {
      rotateRight();
    } else {
      rotateLeft();
    }
  }

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is RedBlackNode && other.value == value;
  }

  @override
  String toString() => 'Node(value:$value, color:$color)';
}

abstract class LinkError {
  static StateError noParent() => StateError('No parent');

  static StateError noGrandparent() => StateError('No grandparent');

  static StateError noUncle() => StateError('No uncle');
}
