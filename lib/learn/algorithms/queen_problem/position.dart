import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

typedef EitherPosition = Either<Exception, Position>;

const kBoardSize = 8;

@immutable
class Position {
  Position(this.x, this.y)
      : assert(x < kBoardSize),
        assert(y < kBoardSize);

  Position.zero()
      : x = 0,
        y = 0;

  final codeA = 'a'.codeUnitAt(0);

  final int x;
  final int y;

  Position get step {
    var newX = x + 1;
    var newY = y;
    if (newX >= kBoardSize) {
      newY = (y + 1) % kBoardSize;
      newX = 0;
    }

    return Position(newX, newY);
  }

  Position get topBottomStep {
    var newX = x + 1;
    var newY = y + 1;
    if (newX >= kBoardSize || newY >= kBoardSize) {
      newX = kBoardSize - (y + 1);
      newY = kBoardSize - (x + 1);
    }

    return Position(newX, newY);
  }

  Position get bottomTopStep {
    var newX = x + 1;
    var newY = y - 1;
    if (newX >= kBoardSize || newY < 0) {
      newX = y;
      newY = x;
    }

    return Position(newX, newY);
  }

  @override
  String toString() => '${String.fromCharCode(codeA + x)}${8 - y}';

  @override
  int get hashCode => hashValues(x, y);

  @override
  bool operator ==(Object other) {
    return identical(other, this) || other is Position && other.x == x && other.y == y;
  }
}
