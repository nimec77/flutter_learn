class TotalAreaCoveredByRectangles {
  int calculate(List<List<int>> rectangles) {
    final rects =
        rectangles.map((points) => Rectangle.fromList(points)).where((rect) => rect.area != 0).toSet().toList();
    if (rects.isEmpty) {
      return 0;
    } else if (rects.length == 1) {
      return rects.first.area;
    }
    final xDividers = uniqueSortedXDividers(rects);
    final splitRects = rectsSplitAtXDividers(rects, xDividers);
    final combinedRects = combinedRectsOnY(splitRects, xDividers);
    final area = combinedRects.fold<int>(0, (previousValue, rect) => previousValue + rect.area);

    return area;
  }

  List<int> uniqueSortedXDividers(List<Rectangle> rects) {
    final xDividers = rects.expand((rect) => [rect.right.x, rect.left.x]).toSet().toList();
    return xDividers..sort();
  }

  List<Rectangle> rectsSplitAtXDividers(List<Rectangle> rects, List<int> xDividers) {
    var dividedRects = rects;
    for (final xDivider in xDividers) {
      var running = <Rectangle>[];
      for (final rect in dividedRects) {
        final dividedInputRects = rect.splitAtX(xDivider);
        running.addAll(dividedInputRects);
      }
      dividedRects = running;
    }
    return dividedRects;
  }

  List<Rectangle> combinedRectsOnY(List<Rectangle> rects, List<int> xDividers) {
    final combinedRects = <Rectangle>[];

    for (final xDivider in xDividers) {
      final xFilteredRects = rects.where((rect) => rect.right.x == xDivider);
      final sortedRects = xFilteredRects.toList()..sort((a, b) => a.right.y.compareTo(b.right.y));
      if (sortedRects.isEmpty) {
        continue;
      }
      if (sortedRects.length == 1) {
        combinedRects.add(sortedRects.first);
        continue;
      }
      var prev = sortedRects.first;
      for (final rect in sortedRects.skip(1)) {
        final unionRect = prev + rect;
        if (unionRect != Rectangle.zero) {
          prev = unionRect;
        } else {
          combinedRects.add(prev);
          prev = rect;
        }
      }
      combinedRects.add(prev);
    }

    return combinedRects;
  }

  int calculateBest(List<List<int>> rectangles) {
    var b = 1 << 62;
    rectangles = rectangles.map((r) => [...r]).toList()..sort((a, b) => area(b) - area(a));
    final root = HalfSpace();
    var s = 0;
    for (var rect in rectangles) {
      s += root.add(rect, [-b, -b, b, b]);
    }
    return s;
  }
}

class Point {
  const Point(this.x, this.y);

  static const zero = Point(0, 0);

  final int x;
  final int y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is Point && x == other.x && y == other.y;
  }

  @override
  String toString() => '($x, $y)';
}

class Rectangle {
  factory Rectangle.fromList(List<int> rect) {
    final left = Point(rect[0], rect[1]);
    final right = Point(rect[2], rect[3]);
    final width = right.x - left.x;
    final height = right.y - left.y;
    return Rectangle._(left: left, right: right, width: width, height: height);
  }

  factory Rectangle.fromLTWH(int x, int y, int width, int height) {
    final left = Point(x, y);
    final right = Point(x + width, y + height);
    return Rectangle._(left: left, right: right, width: width, height: height);
  }

  factory Rectangle.fromPoints(Point left, Point right) {
    final width = right.x - left.x;
    final height = right.y - left.y;
    return Rectangle._(left: left, right: right, width: width, height: height);
  }

  const Rectangle._({
    required this.left,
    required this.right,
    required this.width,
    required this.height,
  });

  static const zero = Rectangle._(left: Point.zero, right: Point.zero, width: 0, height: 0);

  final Point left;
  final Point right;
  final int width;
  final int height;

   int get area => width * height;

  List<Rectangle> splitAtX(int x) {
    if (x <= left.x || x >= right.x) {
      return [this];
    }
    final rect1 = Rectangle.fromLTWH(left.x, left.y, x - left.x, height);
    final rect2 = Rectangle.fromLTWH(x, left.y, right.x - x, height);

    return [rect1, rect2];
  }

  Rectangle operator +(Rectangle other) {
    final leftsX = _sort(left.x, other.left.x);
    final rightsX = _sort(right.x, other.right.x);
    final leftsY = _sort(left.y, other.left.y);
    final rightsY = _sort(right.y, other.right.y);
    if (leftsX.last < rightsX.first && leftsY.last < rightsY.first) {
      return Rectangle.fromPoints(Point(leftsX.first, leftsY.first), Point(rightsX.last, rightsY.last));
    }

    return Rectangle.zero;
  }

  List<int> _sort(int a, int b) {
    return a < b ? [a, b] : [b, a];
  }

  Rectangle operator -(Rectangle other) {
    final leftsX = _sort(left.x, other.left.x);
    final rightsX = _sort(right.x, other.right.x);
    final leftsY = _sort(left.y, other.left.y);
    final rightsY = _sort(right.y, other.right.y);
    if (leftsX.last < rightsX.first && leftsY.last < rightsY.first) {
      return Rectangle.fromPoints(Point(leftsX.last, leftsY.last), Point(rightsX.first, rightsY.first));
    }
    return Rectangle.zero;
  }

  @override
  int get hashCode => left.hashCode ^ right.hashCode;

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is Rectangle && left == other.left && right == other.right;
  }

  @override
  String toString() => '[$left, $right]';
}

int area(List<int> r) => (r[2] - r[0]) * (r[3] - r[1]);

class HalfSpace {
  HalfSpace();

  bool filled = false;
  HalfSpace? left;
  HalfSpace? right;
  int i = 0;
  int v = 0;


  int add(List<int> r, List<int> b) {
    if (filled) return 0;
    if (left != null) {
      if (r[i + 2] <= v) {
        b[i + 2] = v;
        return left!.add(r, b);
      }
      if (r[i] >= v) {
        b[i] = v;
        return right!.add(r, b);
      }
      var leftR = [...r], leftB = [...b];
      leftB[i + 2] = leftR[i + 2] = v;
      r[i] = b[i] = v;
      return left!.add(leftR, leftB) + right!.add(r, b);
    }
    left = HalfSpace();
    right = HalfSpace();
    for (var j = 0; j < 4; j++) {
      if (r[j] != b[j]) {
        i = j % 2;
        v = b[j] = r[j];
        return j <= 1 ? right!.add(r, b) : left!.add(r, b);
      }
    }
    filled = true;
    return area(r);
  }
}
