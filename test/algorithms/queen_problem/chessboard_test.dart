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

    test('addQueen test', () {
      final chessboard = Chessboard.empty();
      expect(chessboard.addQueen(Position(4, 4)), true);
      var board = [
        [1, 0, 0, 0, 1, 0, 0, 0],
        [0, 1, 0, 0, 1, 0, 0, 1],
        [0, 0, 1, 0, 1, 0, 1, 0],
        [0, 0, 0, 1, 1, 1, 0, 0],
        [1, 1, 1, 1, -1, 1, 1, 1],
        [0, 0, 0, 1, 1, 1, 0, 0],
        [0, 0, 1, 0, 1, 0, 1, 0],
        [0, 1, 0, 0, 1, 0, 0, 1]
      ];
      expect(chessboard.board, board);
      expect(chessboard.addQueen(Position(0, 7)), true);
      board = [
        [2, 0, 0, 0, 1, 0, 0, 1],
        [1, 1, 0, 0, 1, 0, 1, 1],
        [1, 0, 1, 0, 1, 1, 1, 0],
        [1, 0, 0, 1, 2, 1, 0, 0],
        [2, 1, 1, 2, -1, 1, 1, 1],
        [1, 0, 1, 1, 1, 1, 0, 0],
        [1, 1, 1, 0, 1, 0, 1, 0],
        [-1, 2, 1, 1, 2, 1, 1, 2]
      ];
      expect(chessboard.board, board);
    });

    test('removeQueen test', () {
      final chessboard = Chessboard.empty()..addQueen(Position(4, 4));
      final board = chessboard.copyBoard;
      final result = chessboard.removeQueen(Position(4, 4));
      expect(result, true);
      expect(chessboard.board, Chessboard.empty().board);
      chessboard..addQueen(Position(4, 4))..addQueen(Position(0, 7))..removeQueen(Position(0, 7));
      expect(chessboard.board, board);
    });

    test('findFirstPlace', () {
      final chessboard = Chessboard.empty()..addQueen(Position(4, 4))..addQueen(Position(0, 7));
      final result = chessboard.findFirstPlace(Position(0, 0));
      expect(result, isA<EitherPosition>());
      expect(result.isRight(), true);
      expect(result | Position(0, 0), Position(2, 1));
    });
  });
}
