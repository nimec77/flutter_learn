import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Position test', () {
    test('toString test', () {
      final a1 = Position(0, 7);
      expect(a1.toString(), 'a1');

      final h1 = Position(7, 7);
      expect(h1.toString(), 'h1');

      final a8 = Position(0, 0);
      expect(a8.toString(), 'a8');

      final h8 = Position(7, 0);
      expect(h8.toString(), 'h8');

      expect(() => Position(0, 8), throwsAssertionError);
      expect(() => Position(8, 0), throwsAssertionError);
      expect(() => Position(8, 8), throwsAssertionError);
    });

    test('topBottomStep test', () {
      final a8 = Position(0, 0);
      expect(a8.topBottomStep.toString(), 'b7');

      final h1 = Position(7, 7);
      expect(h1.topBottomStep.toString(), 'a8');

      final a1 = Position(0, 7);
      expect(a1.topBottomStep.toString(), 'a1');

      final h8 = Position(7, 0);
      expect(h8.topBottomStep.toString(), 'h8');
    });

    test('bottomTopStep test', () {
      final a1 = Position(0, 7);
      expect(a1.bottomTopStep.toString(), 'b2');

      final h8 = Position(7, 0);
      expect(h8.bottomTopStep.toString(), 'a1');

      final a8 = Position(0, 0);
      expect(a8.bottomTopStep.toString(), 'a8');

      final h1 = Position(7, 7);
      expect(h1.bottomTopStep.toString(), 'h1');

      final g7 = Position(6, 1);
      expect(g7.bottomTopStep.toString(), 'h8');

    });
  });
}