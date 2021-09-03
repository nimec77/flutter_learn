import 'dart:math' as math;

class PiApproximation {
  List<dynamic> iterPi(double epsilon) {
    var result = 0.0;
    var count = 0;
    for (final element in leibniz()) {
      count++;
      result += element;
      if ((math.pi - 4 * result).abs() < epsilon) {
        break;
      }
    }

    return <dynamic>[count, (4 * result).toStringAsFixed(10)];
  }

  Iterable<double> leibniz() sync* {
    var current = 1.0;
    var sign = -1;
    var n = 3;

    //ignore:literal_only_boolean_expressions
    while (true) {
      // print("${sign > 0 ? '' : '-'}1/$n, $current");
      yield current;
      current = 1 / n * sign;
      sign *= -1;
      n += 2;
    }
  }

  List<dynamic> iterPiBest(double epsilon) {
    var result = 0.0;
    var i = 0;
    for (var k = 1; (math.pi - result).abs() >= epsilon; k += 2, i++) {
      result += 4 / k * (i.isEven ? 1 : -1);
    }

    return <dynamic>[i, result.toStringAsFixed(10)];
  }
}
