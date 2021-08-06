import 'dart:math' as math;

class ProjectionMotion {
  ProjectionMotion({required this.h0, required this.v0, required this.a});

  final num h0;
  final num v0;
  final num a;

  double get radians => a * math.pi / 180;

  double get velocityY => v0 * math.sin(radians);

  double get velocityX => v0 * math.cos(radians);

  String heightEq() {
    var str = 'h(t) = -16.0t^2 + ${ProjectionMotion.numRound(velocityY)}t';

    if (h0 != 0) {
      str += ' + ${ProjectionMotion.numRound(h0)}';
    }

    return str;
  }

  static double numRound(num n) {
    return (n * 1000).round() / 1000;
  }

  String horizEq() {
    return 'x(t) = ${ProjectionMotion.numRound(velocityX)}t';
  }

  double height(double t) {
    final h = -16.0 * t * t + velocityY * t + h0;

    return ProjectionMotion.numRound(h);
  }

  double horiz(double t) {
    final x = velocityX * t;
    return ProjectionMotion.numRound(x);
  }

  List<double> landing() {
    final d = velocityY * velocityY + 64 * h0;
    final t = (velocityY + math.sqrt(d)) / 32;
    final x = velocityX * t;

    return [ProjectionMotion.numRound(x), 0.0, ProjectionMotion.numRound(t)];
  }
}
