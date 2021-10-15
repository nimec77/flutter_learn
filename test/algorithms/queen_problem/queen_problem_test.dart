import 'package:flutter_learn/learn/algorithms/queen_problem/queen_problem.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QueenProblem test', () {
    test('queenProblem count 8 test', () {
      final queenProblem = QueenProblem();
      var result = queenProblem.queenProblem(0);
      expect(result.toString(), '[a8, e7, h6, f5, c4, g3, b2, d1]');
      result = queenProblem.queenProblem(1);
      expect(result.toString(), '[b8, d7, f6, h5, c4, a3, g2, e1]');
      result = queenProblem.queenProblem(2);
      expect(result.toString(), '[c8, a7, g6, e5, h4, b3, d2, f1]');
      result = queenProblem.queenProblem(3);
      expect(result.toString(), '[d8, a7, e6, h5, b4, g3, c2, f1]');
      result = queenProblem.queenProblem(4);
      expect(result.toString(), '[e8, a7, d6, f5, h4, b3, g2, c1]');
      result = queenProblem.queenProblem(5);
      expect(result.toString(), '[f8, a7, e6, b5, h4, c3, g2, d1]');
      result = queenProblem.queenProblem(6);
      expect(result.toString(), '[g8, a7, c6, h5, f4, d3, b2, e1]');
      result = queenProblem.queenProblem(7);
      expect(result.toString(), '[h8, b7, d6, a5, g4, e3, c2, f1]');
    });
  });
}
