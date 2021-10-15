import 'package:flutter/foundation.dart';
import 'package:flutter_learn/learn/algorithms/queen_problem/position.dart';

@immutable
class Chessboard {
  Chessboard.empty()
      : filledPlacesX = Map.from(List.generate(kBoardSize, (_) => false).asMap()),
        positions = [];

  final Map<int, bool> filledPlacesX;
  final List<Position> positions;

  Iterable<Position> places(final int y) sync* {
    for (final pair in filledPlacesX.entries.where((element) => !element.value)) {
      final pos = Position(pair.key, y);
      if (hasQueenBottom(pos)) {
        continue;
      }
      if (hasQueenTop(pos)) {
        continue;
      }
      yield pos;
    }
  }

  void addQueen(final Position position) {
    positions.add(position);
    filledPlacesX[position.x] = true;
  }

  void removeQueen(final Position position) {
    positions.remove(position);
    filledPlacesX[position.x] = false;
  }

  bool hasQueenBottom(final Position position) {
    final add = position.x + position.y;

    return positions.any((pos) => (pos.x + pos.y) == add);
  }

  bool hasQueenTop(final Position position) {
    final sub = position.x - position.y;

    return positions.any((pos) => (pos.x - pos.y) == sub);
  }

  @override
  String toString() => positions.toString();
}
