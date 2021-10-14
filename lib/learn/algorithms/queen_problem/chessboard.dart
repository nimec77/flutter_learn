import 'package:dartz/dartz.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

class Chessboard {
  Chessboard(this.board);

  Chessboard.empty() : board = _clear;

  List<List<int>> board;

  static List<List<int>> get _clear =>
      List.generate(kBoardSize, (_) => List.generate(kBoardSize, (_) => 0, growable: false), growable: false);

  List<List<int>> get copyBoard =>
      [
        ...board.map((e) => [...e])
      ];

  void clear() {
    board = _clear;
  }

  bool addQueen(Position position) {
    final desk = copyBoard;
    if (desk[position.y][position.x] != 0) {
      return false;
    }
    for (var x = 0; x < kBoardSize; ++x) {
      var value = desk[position.y][x];
      if (value == -1) {
        return false;
      }
      desk[position.y][x] = ++value;
    }
    for (var y = 0; y < kBoardSize; ++y) {
      var value = desk[y][position.x];
      if (value == -1) {
        return false;
      }
      desk[y][position.x] = ++value;
    }
    var topBottomStep = position;
    while ((topBottomStep = topBottomStep.topBottomStep) != position) {
      var value = desk[topBottomStep.y][topBottomStep.x];
      if (value == -1) {
        return false;
      }
      desk[topBottomStep.y][topBottomStep.x] = ++value;
    }
    var bottomTopStep = position;
    while ((bottomTopStep = bottomTopStep.bottomTopStep) != position) {
      var value = desk[bottomTopStep.y][bottomTopStep.x];
      if (value == -1) {
        return false;
      }
      desk[bottomTopStep.y][bottomTopStep.x] = ++value;
    }
    desk[position.y][position.x] = -1;

    board = desk;
    return true;
  }

  bool removeQueen(Position position) {
    if (board[position.y][position.x] != -1) {
      return false;
    }
    for (var x = 0; x < kBoardSize; ++x) {
      board[position.y][x]--;
    }
    for (var y = 0; y < kBoardSize; ++y) {
      board[y][position.x]--;
    }
    var topBottomStep = position;
    while ((topBottomStep = topBottomStep.topBottomStep) != position) {
      board[topBottomStep.y][topBottomStep.x]--;
    }
    var bottomTopStep = position;
    while ((bottomTopStep = bottomTopStep.bottomTopStep) != position) {
      board[bottomTopStep.y][bottomTopStep.x]--;
    }
    board[position.y][position.x] = 0;
    return true;
  }

  EitherPosition findFirstPlace(Position position) {
    for (var y = position.y + 1; y < kBoardSize; ++y) {
      for (var x = (position.x + 1) % kBoardSize; x < kBoardSize; ++x) {
        if (board[y][x] == 0) {
          final newPosition = Position(x, y);
          if (addQueen(newPosition)) {
            return Right(newPosition);
          }
        }
      }
    }
    return Left(Exception('No place for the Queen found'));
  }

  @override
  String toString() {
    return board.toString();
  }
}
