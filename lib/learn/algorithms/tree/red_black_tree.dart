import 'package:flutter_learn/learn/algorithms/tree/red_black_node.dart';

import 'tree_binary.dart';

class RedBlackTree<T extends Comparable<T>> extends TreeBinary<T> {
  RedBlackTree({RedBlackNode<T>? root}) : _root = root;

  RedBlackNode<T>? _root;

  @override
  bool get isEmpty => _root == null;

  @override
  bool get isNotEmpty => _root != null;

  @override
  RedBlackNode<T> get root {
    if (_root == null) {
      TreeElementError.noElement();
    }
    return _root!;
  }

  @override
  RedBlackNode<T> insert(T value) {
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
      return node;
    }

    if (node.parent!.parent == null) {
      return node;
    }

    _fixInsert(node);

    return node;
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

  void leftRotate(RedBlackNode<T> x) {
    final y = x.right;

    x.right = y?.left;

    if (y?.left != null) {
      y!.left!.parent = x;
    }

    y?.parent = x.parent;
    if (x.parent == null) {
      _root = y;
    } else if (x == x.parent!.left) {
      x.parent!.left = y;
    } else {
      x.parent!.right = y;
    }
    y?.left = x;
    x.parent = y;
  }

  void rightRotate(RedBlackNode<T> x) {
    final y = x.left;

    x.left = y?.right;

    if (y?.right != null) {
      y!.right!.parent = x;
    }

    y?.parent = x.parent;
    if (x.parent == null) {
      _root = y;
    } else if (x == x.parent!.right) {
      x.parent!.right = y;
    } else {
      x.parent!.left = y;
    }

    y?.right = x;
    x.parent = y;
  }

  @override
  void clear() {
    _root = null;
  }

  @override
  void delete(T value) {
    _deleteNodeHelper(root, value);
  }
  void _deleteNodeHelper(RedBlackNode<T>? node, T value) {
    RedBlackNode<T>? z, x, y;

    while (node != null) {
      if (node.value == value) {
        z = node;
      }
      if (node.value.compareTo(value) == -1) {
        node = node.right;
      } else {
        node = node.left;
      }
    }

    if (z == null) {
      return;
    }

    y = z;
    var yColor = y.color;
    if (z.left == null) {
      x = z.right;
      _rbTransplant(z, z.right);
    } else if (z.right == null) {
      x = z.left;
      _rbTransplant(z, z.left);
    } else {
      y = _minimum(z.right!);
      yColor = y.color;
      x = y.right;
      if (y.parent == z) {
        x?.parent = y;
      } else {
        _rbTransplant(y, y.right);
        y.right = z.right;
        y.right!.parent = y;
      }

      _rbTransplant(z, y);
      y.left = z.left;
      y.left!.parent = y;
      y.color = z.color;
    }
    if (yColor == NodeColor.black) {
      _fixDelete(x);
    }
  }

  void _fixDelete(RedBlackNode<T>? x) {
    RedBlackNode<T>? s;

    if (x == null) {
      return;
    }
    while (x != root && x!.color == NodeColor.black) {
      if (x == x.parent?.left) {
        s = x.parent!.right;
        if (s?.color == NodeColor.red) {
          s?.color = NodeColor.black;
          x.parent!.color = NodeColor.red;
          leftRotate(x.parent!);
          s = x.parent!.right;
        }

        if (s != null && s.left?.color == NodeColor.black && s.right?.color == NodeColor.black) {
          s.color = NodeColor.red;
          x = x.parent!;
        } else {
          if (s != null && s.right?.color == NodeColor.black) {
            s.left?.color = NodeColor.black;
            s.color = NodeColor.red;
            rightRotate(s);
            s = x.parent!.right;
          }

          s?.color = x.parent!.color;
          x.parent!.color = NodeColor.black;
          s?.right?.color = NodeColor.black;
          leftRotate(x.parent!);
          x = root;
        }
      } else {
        s = x.parent!.left;
        if (s?.color == NodeColor.red) {
          s?.color = NodeColor.black;
          x.parent!.color = NodeColor.red;
          rightRotate(x.parent!);
          s = x.parent!.left;
        }
        if (s != null && s.right?.color == NodeColor.black && s.left?.color == NodeColor.black) {
          s.color = NodeColor.red;
          x = x.parent!;
        } else {
          if (s != null && s.left?.color == NodeColor.black) {
            s.right?.color = NodeColor.black;
            s.color = NodeColor.red;
            leftRotate(s);
            s = x.parent;
          }

          s?.color = x.parent!.color;
          x.parent!.color = NodeColor.black;
          s?.left?.color = NodeColor.black;
          rightRotate(x.parent!);
          x = root;
        }
      }
    }
    x!.color = NodeColor.black;
  }

  RedBlackNode<T> _minimum(RedBlackNode<T> node) {
    while (node.left != null) {
      node = node.left!;
    }
    return node;
  }

  void _rbTransplant(RedBlackNode<T> u, RedBlackNode<T>? v) {
    if (u.parent == null) {
      _root = v;
    } else if (u == u.parent!.left) {
      u.parent!.left = v;
    } else {
      u.parent!.right = v;
    }
    v?.parent = u.parent;
  }
}
