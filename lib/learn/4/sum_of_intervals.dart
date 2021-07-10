import 'dart:collection';
import 'dart:math' as math;

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
        interval = unionInterval;
      }
    }
    return checkedQueue.isEmpty ? intervalLength(interval) : intervalLength(interval) + sumOf(checkedQueue);
  }

  List<int> union(List<int> a, List<int> b) {
    int? first;
    int? last;
    late final List<int> minInterval;
    late final List<int> maxInterval;
    if (a.first < b.first) {
      minInterval = a;
      maxInterval = b;
    } else {
      minInterval = b;
      maxInterval = a;
    }
    if (maxInterval.first < minInterval.last) {
      first = math.min(minInterval.first, maxInterval.first);
      last = math.max(minInterval.last, maxInterval.last);
    }
    if (first != null) {
      return [first, last!];
    }
    return [];
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
