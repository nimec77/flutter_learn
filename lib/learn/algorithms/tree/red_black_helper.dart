import 'package:flutter_learn/learn/algorithms/tree/red_black_node.dart';
import 'package:flutter_learn/learn/algorithms/tree/tree_binary.dart';

class RedBlackHelper<T extends Comparable<T>> {
  RedBlackHelper(this.node);

  final RedBlackNode<T> node;

  bool get hasGrandparent => node.parent != null && node.parent!.parent != null;

  RedBlackNode<T> get grandparent {
    if (!hasGrandparent) {
      TreeElementError.noGrandparent();
    }

    return node.parent!.parent!;
  }

  bool get hasUncle {
    if (!hasGrandparent) {
      return false;
    }
    if (node.parent == node.left &&  node.left != null) {
      return true;
    }

    if (node.right != null) {
      return true;
    }

    return false;
  }

  RedBlackNode<T> get uncle {
    if (!hasUncle) {
      TreeElementError.noUncle();
    }

    if (node.parent == node.left) {
      return node.right!;
    } else {
      return node.left!;
    }
  }
}
