import 'dart:math' as math;

class MaxConsecutiveOnes {
  int findMaxConsecutiveOnes(List<int> nums) {
    final str = nums.join();
    final ar = str.split('0');
    return ar.fold<int>(0, (previousValue, element) => math.max(previousValue, element.length));
  }
}
