import 'package:flutter_learn/learn/algorithms/tree/red_black_node.dart';

import 'red_black_helper.dart';

class RedBlackTree<T extends Comparable<T>> {
  RedBlackTree({RedBlackNode<T>? root}) : _root = root;

  RedBlackNode<T>? _root;

  bool get isEmpty => _root == null;

  bool get isNotEmpty => _root != null;

  RedBlackNode<T> get root {
    if (_root == null) {
      TreeElementError.noElement();
    }
    return _root!;
  }

  void leftRotate(RedBlackNode<T> x) {
    final y = x.right!;

    x.right = y.left;

    if (y.left != null) {
      y.left!.parent = x;
    }

    y.parent = x.parent;
    if (x.parent == null) {
      _root = y;
    } else if (x == x.parent!.left) {
      x.parent!.left = y;
    } else {
      x.parent!.right = y;
    }
    y.left = x;
    x.parent = y;
  }

  void rightRotate(RedBlackNode<T> x) {
    final y = x.left!;

    x.left = y.right;

    if (y.right != null) {
      y.right!.parent = x;
    }

    y.parent = x.parent;
    if (x.parent == null) {
      _root = y;
    } else if (x == x.parent!.right) {
      x.parent!.right = y;
    } else {
      x.parent!.left = y;
    }

    y.right = x;
    x.parent = y;
  }

  // void insert(T value) {
  //   final node = RedBlackNode(value);
  //   if (isEmpty) {
  //     _root = node;
  //   } else {
  //     var p = _root;
  //     RedBlackNode<T>? q;
  //     while (p != null) {
  //       q = p;
  //       if (p.value.compareTo(node.value) == -1) {
  //         p = p.right;
  //       } else {
  //         p = p.left;
  //       }
  //     }
  //     node.parent = q;
  //     if (q!.value.compareTo(node.value) == -1) {
  //       q.right = node;
  //     } else {
  //       q.left = node;
  //     }
  //   }
  //   _insertCase1(node);
  // }

  void insert(T value) {
    final node = RedBlackNode<T>(value);

    RedBlackNode<T>? y;
    var x = _root;

    while (x != null) {
      y = x;
      if (node.value.compareTo(x.value) == -1) {
        x = x.left;
      } else {
        x = x.right;
      }
    }

    node.parent = y;
    if (y == null) {
      _root = node;
    } else if (node.value.compareTo(y.value) == -1) {
      y.left = node;
    } else {
      y.right = node;
    }

    if (node.parent == null) {
      node.color = NodeColor.black;
      return;
    }

    if (node.parent!.parent == null) {
      return;
    }

    _fixInsert(node);
   }

  void _fixInsert(RedBlackNode<T> k) {
    RedBlackNode<T>? u;

    while (k.parent?.color == NodeColor.red) {
      if (k.parent! == k.parent!.parent?.right) {
        u = k.parent!.parent?.left;
        if (u?.color == NodeColor.red) {
          u!.color = NodeColor.black;
          k.parent!.color = NodeColor.black;
          k.parent!.parent!.color = NodeColor.red;
          k = k.parent!.parent!;
        } else {
          if (k == k.parent!.left) {
            k = k.parent!;
            rightRotate(k);
          }
          k.parent!.color = NodeColor.black;
          k.parent!.parent!.color = NodeColor.red;
          leftRotate(k.parent!.parent!);
        }
      } else {
        u = k.parent!.parent?.right;
        if (u?.color == NodeColor.red) {
          u!.color = NodeColor.black;
          k.parent!.color = NodeColor.black;
          k.parent!.parent!.color = NodeColor.red;
          k = k.parent!.parent!;
        } else {
          if (k == k.parent!.right) {
            k = k.parent!;
            leftRotate(k);
          }
          k.parent!.color = NodeColor.black;
          k.parent!.parent!.color = NodeColor.red;
          rightRotate(k.parent!.parent!);
        }
      }
      if (k == _root) {
        break;
      }
    }
    _root!.color = NodeColor.black;
  }

  void _insertCase1(RedBlackNode<T> node) {
    if (node.parent == null) {
      node.color = NodeColor.black;
    } else {
      _insertCase2(node);
    }
  }

  void _insertCase2(RedBlackNode<T> node) {
    if (node.parent!.color == NodeColor.black) {
      return;
    } else {
      _insertCase3(node);
    }
  }

  void _insertCase3(RedBlackNode<T> node) {
    final helper = RedBlackHelper(node);

    if (helper.hasUncle && helper.uncle.color == NodeColor.red) {
      final u = helper.uncle;
      final g = helper.grandparent;
      node.parent!.color = NodeColor.black;
      u.color = NodeColor.black;
      g.color = NodeColor.red;
      _insertCase1(node);
    } else {
      _insertCase4(node);
    }
  }

  void _insertCase4(RedBlackNode<T> node) {
    final g = RedBlackHelper(node).grandparent;
    if (node == node.parent!.right && node.parent == g.left) {
      leftRotate(node.parent!);
      node = node.left!;
    } else if (node == node.parent!.left && node.parent == g.right) {
      rightRotate(node.parent!);
      node = node.right!;
    }

    _insertCase5(node);
  }

  void _insertCase5(RedBlackNode<T> node) {
    final g = RedBlackHelper(node).grandparent;

    node.parent!.color = NodeColor.black;
    g.color = NodeColor.red;
    if (node == node.parent!.left && node.parent == g.left) {
      rightRotate(g);
    } else {
      leftRotate(g);
    }
  }
}

abstract class TreeElementError {
  static StateError noElement() => StateError('No element');

  static StateError noParent() => StateError('No parent');

  static StateError noGrandparent() => StateError('No grandparent');

  static StateError noUncle() => StateError('No uncle');
}
