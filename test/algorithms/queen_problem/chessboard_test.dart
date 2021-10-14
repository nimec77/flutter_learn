import 'package:flutter_learn/learn/algorithms/queen_problem/chessboard.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Chessboard test', () {
    test('empty constructor test', () {
      final result = Chessboard.empty();
      final board = [
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
      ];
      expect(result.board, board);
    });
  });
}
