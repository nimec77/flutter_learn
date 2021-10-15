import 'package:flutter/foundation.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

@immutable
class Chessboard {
  Chessboard.empty()
      : board =
            List.generate(kBoardSize, (_) => List.generate(kBoardSize, (_) => false, growable: false), growable: false),
        filledPlacesX = Map.from(List.generate(kBoardSize, (_) => false, growable: false).asMap());

  final List<List<bool>> board;
  final Map<int, bool> filledPlacesX;

  Iterable<Position> places(int y) sync* {
    for (final pair in filledPlacesX.entries.where((element) => !element.value)) {
      final x = pair.key;
      final pos = Position(x, y);
      if (hasQueenBottom(pos)) {
        continue;
      }
      if (hasQueenTop(pos)) {
        continue;
      }
      yield pos;
    }
  }

  void addQueen(Position position) {
    assert(!board[position.y][position.x], 'This place is already taken');
    board[position.y][position.x] = true;
    filledPlacesX[position.x] = true;
  }

  void removeQueen(Position position) {
    assert(board[position.y][position.x], 'The is no Queen in this place');
    board[position.y][position.x] = false;
    filledPlacesX[position.x] = false;
  }

  bool hasQueenBottom(Position position) {
    var pos = position;
    while ((pos = pos.bottomTopStep) != position) {
      if (board[pos.y][pos.x]) {
        return true;
      }
    }
    return false;
  }

  bool hasQueenTop(Position position) {
    var pos = position;
    while ((pos = pos.topBottomStep) != position) {
      if (board[pos.y][pos.x]) {
        return true;
      }
    }

    return false;
  }

  @override
  String toString() {
    return board.toString();
  }
}
