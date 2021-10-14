import 'package:flutter/foundation.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

@immutable
class Chessboard {
  const Chessboard(this.board);

  Chessboard.empty()
      : board =
            List.generate(kBoardSize, (_) => List.generate(kBoardSize, (_) => false, growable: false), growable: false);

  final List<List<bool>> board;

  Iterable<Position> places(int y) sync* {
    if (hasQueenOnY(y)) {
      return;
    }
    for (var x = 0; x <= kBoardSize; ++x) {
      if (hasQueenOnX(x)) {
        continue;
      }
      final pos = Position(x, y);
      if (hasQueenBottom(pos)) {
        continue;
      }
      if (hasQueenTop(pos)) {
        continue;
      }
      board[y][x] = true;
      yield pos;
    }
  }

  void removeQueen(Position position) {
    assert(board[position.y][position.x], 'The is no Queen in this place');
    board[position.y][position.x] = false;
  }

  bool hasQueenOnY(int y) {
    return board[y].any((place) => place);
  }

  bool hasQueenOnX(int x) {
    for (var y = 0; y <= kBoardSize; ++y) {
      if (board[y][x]) {
        return true;
      }
    }
    return false;
  }

  bool hasQueenBottom(Position position) {
    var pos = position;
    if (board[position.y][position.x]) {
      return true;
    }
    while ((pos = pos.bottomTopStep) != position) {
      if (board[position.y][position.x]) {
        return true;
      }
    }
    return false;
  }

  bool hasQueenTop(Position position) {
    var pos = position;
    if (board[position.y][position.x]) {
      return true;
    }
    while ((pos = pos.topBottomStep) != position) {
      if(board[position.y][position.x]) {
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
