import 'package:flutter_learn/learn/8/square_sum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final squareSim = SquareSum();
  test('Basic tests', () {
    expect(squareSim.squareSum([1,2]), equals(5));
    expect(squareSim.squareSum([0,3,4,5]), equals(50));
    expect(squareSim.squareSum([]), equals(0));
    expect(squareSim.squareSum([-1,-2]), equals(5));
    expect(squareSim.squareSum([-1,0,1]), equals(2));
  });
}