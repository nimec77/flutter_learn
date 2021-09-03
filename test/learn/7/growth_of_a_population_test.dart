import 'package:flutter_learn/learn/7/growth_of_a_population.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final growthOfAPopulation = GrowthOfAPopulation();
  group('basic tests', () {
    test('nbYear(1500, 5, 100, 5000)', () => expect(growthOfAPopulation.nbYear(1500, 5, 100, 5000), equals(15)));
    test('nbYear(1500000, 2.5, 10000, 2000000)',
        () => expect(growthOfAPopulation.nbYear(1500000, 2.5, 10000, 2000000), equals(10)));
    test('nbYear(1500000, 0.25, 1000, 2000000)',
        () => expect(growthOfAPopulation.nbYear(1500000, 0.25, 1000, 2000000), equals(94)));
    test('nbYear(1500000, 0.25, -1000, 2000000)',
        () => expect(growthOfAPopulation.nbYear(1500000, 0.25, -1000, 2000000), equals(151)));
    test('nbYear(1500000, 0.25, 1, 2000000)',
        () => expect(growthOfAPopulation.nbYear(1500000, 0.25, 1, 2000000), equals(116)));
    test('nbYear(1500000, 0.0, 10000, 2000000)',
        () => expect(growthOfAPopulation.nbYear(1500000, 0, 10000, 2000000), equals(50)));
  });
}
