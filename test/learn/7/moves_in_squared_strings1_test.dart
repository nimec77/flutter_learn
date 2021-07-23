import 'package:flutter_learn/learn/7/moves_in_squared_string1.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final movesInSquaredStrings = MovesInSquaredString1();

  void testing(String act, String exp) => expect(act, equals(exp));
  group('opstrings', () {
    test('Basic tests vertMirror', () {
      testing(
          movesInSquaredStrings.oper(
              movesInSquaredStrings.vertMirror, 'hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu'),
          'QHdgSh\noaMDnH\nXxNNlC\nHxxvRi\nAvVTqb\nuRySvw');
      testing(
          movesInSquaredStrings.oper(
              movesInSquaredStrings.vertMirror, 'IzOTWE\nkkbeCM\nWuzZxM\nvDddJw\njiJyHF\nPVHfSx'),
          'EWTOzI\nMCebkk\nMxZzuW\nwJddDv\nFHyJij\nxSfHVP');
    });
    test('Basic tests horMirror', () {
      testing(movesInSquaredStrings.oper(movesInSquaredStrings.horMirror, 'lVHt\nJVhv\nCSbg\nyeCt'),
          'yeCt\nCSbg\nJVhv\nlVHt');
      testing(movesInSquaredStrings.oper(movesInSquaredStrings.horMirror, 'njMK\ndbrZ\nLPKo\ncEYz'),
          'cEYz\nLPKo\ndbrZ\nnjMK');
    });
  });
}
