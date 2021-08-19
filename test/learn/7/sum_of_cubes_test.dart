import 'package:flutter_learn/learn/7/sum_of_cubes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final sumOfCubes = SumOfCubes();
  group('Fixed tests', () {
    test('Testing for 1', () => expect(sumOfCubes.sumCubes(1), equals(1)));
    test('Testing for 2', () => expect(sumOfCubes.sumCubesBest(2), equals(9)));
    test('Testing for 3', () => expect(sumOfCubes.sumCubes(3), equals(36)));
    test('Testing for 4', () => expect(sumOfCubes.sumCubes(4), equals(100)));
    test('Testing for 10', () => expect(sumOfCubes.sumCubes(10), equals(3025)));
    test('Testing for 123', () => expect(sumOfCubes.sumCubes(123), equals(58155876)));
    test('Testing for 77000', () => expect(sumOfCubes.sumCubes(77000), equals(8788488517982250000)));
  });
}