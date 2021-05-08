import 'package:flutter_learn/learn/7/functions_of_integers_on_cartesian_plane.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Basic-tests', () {
    final functionsOfIntegersOnCartesian = FunctionsOfIntegersOnCartesianPlane();
    expect(functionsOfIntegersOnCartesian.sumin(6), equals(91));
    expect(functionsOfIntegersOnCartesian.sumin(5), equals(55));
    expect(functionsOfIntegersOnCartesian.sumax(8), equals(372));
    expect(functionsOfIntegersOnCartesian.sumsum(8), equals(576));
  });
}