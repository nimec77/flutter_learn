import 'dart:math' as math;

class TotalAreaCoveredPartTwo {
  int calculate(List<List<int>> rectangles) {
    if (rectangles.isEmpty) {
      return 0;
    }
    final rects = rectangles.map((points) => Rect.fromList(points)).where((rect) => rect.area > 0);
    if (rects.length == 1) {
      return rects.first.area;
    }
    final xDividers = rects.expand((rect) => [rect.minX, rect.maxX]).toSet().toList()..sort();
    var area = 0;
    var startX = xDividers.first;
    for (final endX in xDividers.skip(1)) {
      final width = endX - startX;
      final rectsInLine = rects.where((rect) => rect.minX < endX && rect.maxX > startX).toList();
      startX = endX;
      if (rectsInLine.isEmpty) {
        continue;
      }
      area += width * sumOfHeights(rectsInLine);
    }
    return area;
  }

  int sumOfHeights(List<Rect> rects) {
    if (rects.length == 1) {
      return rects.first.maxY - rects.first.minY;
    }
    final sortedRects = rects..sort((a, b) => a.minY == b.minY ? a.maxY - b.maxY : a.minY - b.minY);
    var sum = 0;
    var start = sortedRects.first.minY;
    var end = sortedRects.first.maxY;

    for (final rect in sortedRects.skip(1)) {
      if (start == rect.minY && end == rect.maxY) {
        continue;
      }
      if (rect.minY > end) {
        sum += end - start;
        start = rect.minY;
        end = rect.maxY;
      } else {
        end = math.max(end, rect.maxY);
      }
    }

    return sum + end - start;
  }
}

class Rect {
  const Rect({
    required this.minX,
    required this.maxX,
    required this.minY,
    required this.maxY,
  });

  factory Rect.fromList(List<int> points) {
    return Rect(minX: points[0], minY: points[1], maxX: points[2], maxY: points[3]);
  }

  final int minX;
  final int maxX;
  final int minY;
  final int maxY;

  int get area => (maxX - minX) * (maxY - minY);

  @override
  int get hashCode => minX.hashCode ^ minY.hashCode ^ maxX.hashCode ^ maxY;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Rect && minX == other.minX && minY == other.minY && maxX == other.maxX && maxY == other.maxY;
  }

  @override
  String toString() => '[($minX, $minY), ($maxX, $maxY)]';
}
