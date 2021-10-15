
import 'package:flutter_learn/learn/algorithms/queen_problem/chessboard.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

const maxQueens = 8;

class QueenProblem {
  late Chessboard chessboard;

  List<Position> queenProblem(final int startX) {
    chessboard = Chessboard.empty();

    final startPosition = Position(startX, 0);
    chessboard.addQueen(startPosition);
    if (!_placeQueen(1)) {
      throw StateError('Failed to place $maxQueens queens on the chessboard');
    }

    return chessboard.positions;
  }

  bool _placeQueen(final int y) {
    if (chessboard.positions.length >= maxQueens) {
      return true;
    }
    for (final position in chessboard.places(y)) {
      chessboard.addQueen(position);
      final result = _placeQueen(y + 1);
      if (result) {
        return true;
      }
      chessboard.removeQueen(position);
    }

    return false;
  }
}
