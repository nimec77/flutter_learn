import 'package:flutter_learn/learn/algorithms/queen_problem/queen_problem.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QueenProblem test', () {
    test('queenProblem count 8 test', () {
      final queenProblem = QueenProblem();
      final result = queenProblem.queenProblem(8);
      print(result);
    });
  });
}