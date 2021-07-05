import 'dart:math' as math;
class CalculateTheArea {
  double areaOfPolygonInsideCircle(double circleRadius, int numberOfSides) {

    final angle = 2 * math.pi / numberOfSides;
    final area = circleRadius * circleRadius * math.sin(angle) / 2;

    return double.parse((area * numberOfSides).toStringAsFixed(3));
  }
}