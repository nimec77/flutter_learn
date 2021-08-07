import 'package:flutter_learn/learn/7/drying_potatoes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final dryingPotatoes = DryingPotatoes();
  group('basic tests', () {
    test('potatoes(82, 127, 80)', () => expect(dryingPotatoes.potatoes(82, 127, 80), equals(114)));
    test('potatoes(93, 129, 91)', () => expect(dryingPotatoes.potatoes(93, 129, 91), equals(100)));
    test('potatoes(82, 134, 77)', () => expect(dryingPotatoes.potatoes(82, 134, 77), equals(104)));
    test('potatoes(90, 194, 87)', () => expect(dryingPotatoes.potatoes(90, 194, 87), equals(149)));
    test('potatoes(82, 173, 77)', () => expect(dryingPotatoes.potatoes(82, 173, 77), equals(135)));
    test('potatoes(77, 227, 74)', () => expect(dryingPotatoes.potatoes(77, 227, 74), equals(200)));
    test('potatoes(76, 64, 75)', () => expect(dryingPotatoes.potatoes(76, 64, 75), equals(61)));
    test('potatoes(81, 120, 79)', () => expect(dryingPotatoes.potatoes(81, 120, 79), equals(108)));
    test('potatoes(84, 65, 80)', () => expect(dryingPotatoes.potatoes(84, 65, 80), equals(52)));
    test('potatoes(93, 69, 89)', () => expect(dryingPotatoes.potatoes(93, 69, 89), equals(43)));
    test('potatoes(78, 121, 75)', () => expect(dryingPotatoes.potatoes(78, 121, 75), equals(106)));
    test('potatoes(83, 185, 79)', () => expect(dryingPotatoes.potatoes(83, 185, 79), equals(149)));
    test('potatoes(78, 57, 76)', () => expect(dryingPotatoes.potatoes(78, 57, 76), equals(52)));
    test('potatoes(79, 132, 78)', () => expect(dryingPotatoes.potatoes(79, 132, 78), equals(126)));
    test('potatoes(86, 195, 84)', () => expect(dryingPotatoes.potatoes(86, 195, 84), equals(170)));
    test('potatoes(75, 96, 70)', () => expect(dryingPotatoes.potatoes(75, 96, 70), equals(80)));
    test('potatoes(81, 150, 77)', () => expect(dryingPotatoes.potatoes(81, 150, 77), equals(123)));
    test('potatoes(82, 57, 81)', () => expect(dryingPotatoes.potatoes(82, 57, 81), equals(54)));
    test('potatoes(85, 58, 83)', () => expect(dryingPotatoes.potatoes(85, 58, 83), equals(51)));
    test('potatoes(78, 173, 77)', () => expect(dryingPotatoes.potatoes(78, 173, 77), equals(165)));
  });
}
