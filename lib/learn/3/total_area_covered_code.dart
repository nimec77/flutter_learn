import 'dart:math' as math;

class TotalAreaCoveredCode {
  int calculateOne(List<List<int>> rectangles) {
    final xVals = <int>{};
    final yVals = <int>{};

    for (final rect in rectangles) {
      xVals
        ..add(rect[0])
        ..add(rect[2]);
      yVals
        ..add(rect[1])
        ..add(rect[3]);
    }
    final iMapX = xVals.toList()..sort();
    final iMapY = yVals.toList()..sort();

    final mapX = <int, int>{};
    final mapY = <int, int>{};
    for (var i = 0; i < iMapX.length; ++i) {
      mapX[iMapX[i]] = i;
    }
    for (var i = 0; i < iMapY.length; ++i) {
      mapY[iMapY[i]] = i;
    }

    // final grid = <List<bool>>[];
    final grid = List.generate(iMapX.length, (index) => List.filled(iMapY.length, false), growable: false);
    for (final rec in rectangles) {
      for (var x = mapX[rec[0]]!; x < mapX[rec[2]]!; ++x) {
        for (var y = mapY[rec[1]]!; y < mapY[rec[3]]!; ++y) {
          grid[x][y] = true;
        }
      }
    }
    var ans = 0;
    for (var x = 0; x < grid.length; ++x) {
      for (var y = 0; y < grid[0].length; ++y) {
        if (grid[x][y]) {
          ans += (iMapX[x + 1] - iMapX[x]) * (iMapY[y + 1] - iMapY[y]);
        }
      }
    }
    // ans %= 1000000007;

    return ans;
  }

  int calculateTwo(List<List<int>> rectangles) {
    const kOpen = 0;
    const kClose = 1;

    final events = <List<int>>[];
    for (final rec in rectangles) {
      events
        ..add([rec[1], kOpen, rec[0], rec[2]])
        ..add([rec[3], kClose, rec[0], rec[2]]);
    }
    events.sort((a, b) => a.first.compareTo(b.first));

    final active = <List<int>>[];
    var curY = events.first.first;
    var ans = 0;
    for (final event in events) {
      final y = event.first;
      final type = event[1];
      final x1 = event[2];
      final x2 = event[3];
      var query = 0;
      var cur = -1;
      for (final xs in active) {
        cur = math.max(cur, xs.first);
        query += math.max(xs[1] - cur, 0);
        cur = math.max(cur, xs[1]);
      }
      ans += query * (y - curY);

      if (type == kOpen) {
        active
          ..add([x1, x2])
          ..sort((a, b) => a.first.compareTo(b.first));
      } else {
        for (var i = 0; i < active.length; ++i) {
          if (active[i][0] == x1 && active[i][1] == x2) {
            active.removeAt(i);
            break;
          }
        }
      }
      curY = y;
    }

    return ans;
  }

  int calculateThree(List<List<int>> rectangles) {
    if (rectangles.isEmpty) {
      return 0;
    }
    const kOpen = 1;
    const kClose = -1;

    final events = <List<int>>[];
    final xVals = <int>{};

    for (final rec in rectangles) {
      final x1 = rec[0];
      final y1 = rec[1];
      final x2 = rec[2];
      final y2 = rec[3];
      if ((x1 < x2) && (y1 < y2)) {
        events
          ..add([y1, kOpen, x1, x2])
          ..add([y2, kClose, x1, x2]);
        xVals
          ..add(x1)
          ..add(x2);
      }
    }
    events.sort((a, b) => a.first.compareTo(b.first));

    final listX = xVals.toList()..sort();
    final xIndex = <int, int>{};
    for (var i = 0; i < listX.length; ++i) {
      xIndex[listX[i]] = i;
    }

    final active = Node(0, listX.length - 1, listX);
    var ans = 0;
    var curXSum = 0;
    var curY = events.first.first;

    for (final event in events) {
      final y = event[0];
      final typ = event[1];
      final x1 = event[2];
      final x2 = event[3];
      ans += curXSum * (y - curY);
      curXSum = active.update(xIndex[x1]!, xIndex[x2]!, typ);
      curY = y;
    }

    return ans;
  }
}

class Node {
  Node(this.start, this.end, this.listX): _count = 0, total = 0;

  final int start;
  final int end;
  final List<int> listX;

  Node? _left;
  Node? _right;
  int _count;
  int total;

  int get mid => (start + end) ~/ 2;

  Node get left {
    _left ??= Node(start, mid, listX);

    return _left!;
  }

  Node get right {
    _right ??= Node(mid, end, listX);

    return _right!;
  }

  int update(int i, int j, int val) {
    if (i >= j) {
      return 0;
    }
    if (start == i && end == j) {
      _count += val;
    } else {
      left.update(i, math.min(mid, j), val);
      right.update(math.max(mid, i), j, val);
    }

    if (_count > 0) {
      total = listX[end] - listX[start];
    } else {
      total = left.total + right.total;
    }

    return total;
  }
}
