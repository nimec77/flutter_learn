import 'package:flutter_learn/learn/algorithms/queen_problem/chessboard.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

const maxQueens = 8;

class QueenProblem {
  late Chessboard chessboard;
  late List<List<Position>> solutions;

  List<List<Position>> queenProblem() {
    chessboard = Chessboard.empty();
    solutions = [];

    _placeQueen(0);
    if (solutions.isEmpty) {
      throw StateError('Failed to place $maxQueens queens on the chessboard');
    }
    print('Fount ${solutions.length} solutions tho the problem with $maxQueens queens');

    return solutions;
  }

  bool _placeQueen(final int y) {
    if (chessboard.positions.length >= maxQueens) {
      print(chessboard.positions);
      solutions.add(List.from(chessboard.positions));
      return false;
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
