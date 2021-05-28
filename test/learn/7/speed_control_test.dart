import 'package:flutter_learn/learn/7/speed_control.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('gps', () {
    final speedControl = SpeedControl();
    void testing(int actual, int exp) {
      final r = (actual - exp).abs();
      expect(r <= 1, equals(true), reason: '(actual - expected).abs must be <= 1 but was ${r.toStringAsFixed(2)}');
    }

    test('Basic tests', () {
      testing(speedControl.gps(20, [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61]), 41);
      testing(speedControl.gps(12, [0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25]),
          219);
      testing(
          speedControl.gps(
              20, [0.0, 0.18, 0.36, 0.54, 0.72, 1.05, 1.26, 1.47, 1.92, 2.16, 2.4, 2.64, 2.88, 3.12, 3.36, 3.6, 3.84]),
          80);
      testing(speedControl.gps(19, []), 0);
      testing(speedControl.gps(19, [0.0]), 0);
    });
  });
}
