import 'package:flutter_learn/learn/7/bases_everywhere.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final baseEverywhere = BasesEverywhere();
  group('Fixed tests', () {
    test(
        ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
        () => expect(
            baseEverywhere.baseFinder(<dynamic>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']), equals(10)));
    test(
        ['1', '2', '3', '4', '5', '6', '10', '11', '12', '13'],
        () => expect(
            baseEverywhere.baseFinder(<dynamic>['1', '2', '3', '4', '5', '6', '10', '11', '12', '13']), equals(7)));
  });
}
