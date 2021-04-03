import 'package:flutter_learn/learn/7/triangular_treasure.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Basic tests', () {
    final triangularTreasure = TriangularTreasure();
    expect(triangularTreasure.triangular(2), equals(3));
    expect(triangularTreasure.triangular(4), equals(10));
    expect(triangularTreasure.triangular(9), equals(45));
    expect(triangularTreasure.triangular(-9), equals(0));
  });
}
