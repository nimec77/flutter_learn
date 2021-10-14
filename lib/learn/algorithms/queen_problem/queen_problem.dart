import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/chessboard.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

enum PlaceResult {
  placed,
  noPlace,
  allPlaced,
}

@immutable
class QueenProblem {
  final _chessboard = Chessboard.empty();
  final _places = Queue<Position>();

  List<Position> queenProblem(int count) {
    _chessboard.clear();
    _places
      ..clear()
      ..add(Position.zero());

    _chessboard.addQueen(_places.last);

    var result = PlaceResult.placed;
    var position = _chessboard.findFirstPlace(_places.last) | Position.zero();
    while ((result = _placeQueen(position)) != PlaceResult.allPlaced && _places.length < count) {
      if (result == PlaceResult.placed) {
        position = _places.last;
      } else if (result == PlaceResult.noPlace) {
        while (_places.isNotEmpty) {
          final pos = _places.removeLast();
          if (!_chessboard.removeQueen(pos)) {
            throw AssertionError('Error remove Queen from: $pos');
          }
          final newPosition = pos.step;
          if (newPosition == Position.zero()) {
            continue;
          }
          final find = _chessboard.findFirstPlace(newPosition);
          if (find.isLeft()) {
            continue;
          }
          position = find | Position.zero();
          break;
        }
      }
    }

    return _places.toList();
  }

  PlaceResult _placeQueen(Position position) {
    return _chessboard.findFirstPlace(position).fold(
          (exception) => PlaceResult.noPlace,
          (newPosition) {
            _places.add(newPosition);
            return PlaceResult.placed;
          },
        );
  }
}
