import 'dart:math';

class DeodorantEvaporator {
  int evaporator(double content, double evapPerDay, double threshold) {
    final days = log(0.01 * threshold) / log(1 -  0.01 * evapPerDay);
    return days.ceil();
  }
}