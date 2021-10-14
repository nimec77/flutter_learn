import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/chessboard.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

enum PlaceResult {
  placed,
  noPlace,
  allPlaced,
}
const maxQueens = 8;

@immutable
class QueenProblem {

  List<Position> queenProblem() {
    final queue = Queue<Position>();
    final chessboard = Chessboard.empty();
    final places = Queue<Iterable<Position>>();

    // final eitherPosition = position.stepY;
    // if (eitherPosition.isLeft()) {
    //   return;
    // }
    // final newYPosition = eitherPosition | Position.zero();
    // if (hasQueenOnY(newYPosition.y)) {
    //   return;
    // }

    for (var y = 0; y < kBoardSize; ++y) {
      places.add(chessboard.places(y));
      for (final position in places.last) {

      }
    }

    return queue.toList();
  }

  PlaceResult placeQueen(Chessboard chessboard, int y) {
    return PlaceResult.noPlace;
  }
}
