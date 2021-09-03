import 'package:flutter_learn/learn/6/projection_motion.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Example cases:', () {
    test('should work for the description case', () {
      final p = ProjectionMotion(h0: 5, v0: 2, a: 45);
      expect(p.heightEq(), equals('h(t) = -16.0t^2 + 1.414t + 5.0'));
      expect(p.horizEq(), equals('x(t) = 1.414t'));
      expect(p.height(0.2), equals(4.643));
      expect(p.horiz(0.2), equals(0.283));
      expect(p.landing(), equals([0.856, 0, 0.605]));
    });
    test('should work when h0 = 0', () {
      final p = ProjectionMotion(h0: 0, v0: 5, a: 45);
      expect(p.heightEq(), equals('h(t) = -16.0t^2 + 3.536t'));
      expect(p.horizEq(), equals('x(t) = 3.536t'));
      expect(p.height(0.2), equals(0.067));
      expect(p.horiz(0.2), equals(0.707));
      expect(p.landing(), equals([0.781, 0, 0.221]));
    });
    test('should work for another example', () {
      final p = ProjectionMotion(h0: 15, v0: 12, a: 80);
      expect(p.heightEq(), equals('h(t) = -16.0t^2 + 11.818t + 15.0'));
      expect(p.horizEq(), equals('x(t) = 2.084t'));
      expect(p.height(0), equals(15.0));
      expect(p.horiz(0), equals(0.0));
      expect(p.height(1), equals(10.818));
      expect(p.horiz(1), equals(2.084));
      expect(p.landing(), equals([2.929, 0.0, 1.406]));
    });
  });
}
