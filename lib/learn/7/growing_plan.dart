import 'dart:math' as math;

class GrowingPlan {
  int growingPlant(int upSpeed, int downSpeed, int desiredHeight) {
    var days = 1;
    var height = upSpeed;
    while (height < desiredHeight) {
      height += upSpeed - downSpeed;
      days++;
    }

    return days;
  }

  int growingPlantBest(int upSpeed, int downSpeed, int desiredHeight) {
    final dailyGrowth = upSpeed - downSpeed;
    final growthNeeded = math.max(0, desiredHeight - upSpeed);

    return 1 + (growthNeeded / dailyGrowth).ceil();
  }
}
