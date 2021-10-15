import 'dart:collection';

import 'package:flutter_learn/learn/algorithms/queen_problem/chessboard.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

const maxQueens = 8;

class QueenProblem {
  final queue = Queue<Position>();
  Chessboard chessboard = Chessboard.empty();

  List<Position> queenProblem(int startX) {
    queue.clear();
    chessboard = Chessboard.empty();

    final startPosition = Position(startX, 0);
    chessboard.addQueen(startPosition);
    queue.add(startPosition);
    if (!placeQueen(1)) {
      AssertionError('Failed to place $maxQueens queens on the chessboard');
    }

    return queue.toList();
  }

  bool placeQueen(final int y) {
    if (queue.length >= maxQueens) {
      return true;
    }
    for (final position in chessboard.places(y)) {
      chessboard.addQueen(position);
      queue.add(position);
      final result = placeQueen(y + 1);
      if (result) {
        return true;
      }
      chessboard.removeQueen(position);
      queue.removeLast();
    }

    return false;
  }
}
