import 'dart:collection';

class SumOfIntervals {
  int sumOfIntervals(List<List<int>> intervals) {
    return sumOf(Queue<List<int>>.from(intervals));
  }

  int sumOf(Queue<List<int>> intervalsQueue) {
    if (intervalsQueue.length == 1) {
      return intervalLength(intervalsQueue.first);
    }
    var interval = intervalsQueue.removeFirst();
    final checkedQueue = Queue<List<int>>();
    while (intervalsQueue.isNotEmpty) {
      final other = intervalsQueue.removeFirst();
      final unionInterval = union(interval, other);
      if (unionInterval.isEmpty) {
        checkedQueue.add(other);
      } else {
        intervalsQueue.addAll(checkedQueue);
        checkedQueue.clear();
        interval = unionInterval;
      }
    }
    return checkedQueue.isEmpty ? intervalLength(interval) : intervalLength(interval) + sumOf(checkedQueue);
  }

  List<int> union(List<int> a, List<int> b) {
    late final int beginMax;
    late final int beginMin;
    if (a.first < b.first) {
      beginMin = a.first;
      beginMax = b.first;
    } else {
      beginMin = b.first;
      beginMax = a.first;
    }
    late final int endMax;
    late final int endMin;
    if (a.last < b.last) {
      endMin = a.last;
      endMax = b.last;
    } else {
      endMin = b.last;
      endMax = a.last;
    }

    return beginMax < endMin ? [beginMin, endMax] : [];
  }

  int intervalLength(List<int> interval) {
    return interval.last - interval.first;
  }

  int sumOfIntervalsBest(List<List<int>> intervals) {
    final nums = <int>{};
    for (final interval in intervals) {
      nums.addAll(List.generate(interval.last - interval.first, (index) => interval.first + index));
    }
    return nums.length;
  }
}
