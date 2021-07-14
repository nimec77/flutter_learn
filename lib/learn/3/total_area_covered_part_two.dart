
class TotalAreaCoveredPartTwo {
  int calculate(List<List<int>> rectangles) {
    final rects = rectangles.map((points) => Rect.fromList(points)).where((rect) => rect.area > 0);
    if (rects.length == 1) {
      return rects.first.area;
    }
    final xDividers = rects.expand((rect) => [rect.minX, rect.maxX]).toSet().toList()..sort();
    var area = 0;
    var startX = xDividers.first;
    for (final endX in xDividers.skip(1)) {
      final width = endX - startX;
      final rectsInLine = rects.where((rect) => rect.minX < endX && rect.maxX > startX);
      area += width * sumOfHeights(rectsInLine);
      startX = endX;
    }
    return area;
  }

  int sumOfHeights(Iterable<Rect> rects) {
    final nums = <int>{};
    for (final rect in rects) {
      nums.addAll(List.generate(rect.maxY - rect.minY, (i) => rect.minY + i));
    }
    return nums.length;
    // if (rects.isEmpty) {
    //   return 0;
    // }
    // final setRects = rects.toList()..sort((a, b) => a.minY - b.minY);
    //
    // var sum = 0;
    // var start = rects.first.minY;
    // var end = rects.first.maxY;
    //
    // for (var i = 1; i < rects.length; i++) {
    //   final b = setRects[i];
    //   if (end >= b.minY) {
    //     if (b.maxY > end) end = b.maxY;
    //   } else {
    //     sum += end - start;
    //     start = b.minY;
    //     end = b.maxY;
    //   }
    // }
    //
    // return sum + end - start;
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
