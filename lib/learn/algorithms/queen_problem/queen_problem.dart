import 'dart:collection';

import 'package:flutter_learn/learn/algorithms/queen_problem/chessboard.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

const maxQueens = 8;

class QueenProblem {
  late Queue<Position> queue;
  late Chessboard chessboard;

  List<Position> queenProblem(final int startX) {
    queue = Queue<Position>();
    chessboard = Chessboard.empty();

    final startPosition = Position(startX, 0);
    chessboard.addQueen(startPosition);
    queue.add(startPosition);
    if (!_placeQueen(1)) {
      throw StateError('Failed to place $maxQueens queens on the chessboard');
    }

    return queue.toList();
  }

  bool _placeQueen(final int y) {
    if (queue.length >= maxQueens) {
      return true;
    }
    for (final position in chessboard.places(y)) {
      chessboard.addQueen(position);
      queue.add(position);
      final result = _placeQueen(y + 1);
      if (result) {
        return true;
      }
      chessboard.removeQueen(position);
      queue.removeLast();
    }

    return false;
  }
}
