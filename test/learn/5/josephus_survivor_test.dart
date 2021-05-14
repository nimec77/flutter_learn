import 'package:flutter_learn/learn/5/josephus_survivor.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Basic tests', () {
    final josephusSurvivor = JosephusSurvivor();
    test('josephusSurvivor(7, 3)', () => expect(josephusSurvivor.josephusSurvivor(7, 3), equals(4)));
    test('josephusSurvivor(11, 19)', () => expect(josephusSurvivor.josephusSurvivor(11, 19), equals(10)));
    test('josephusSurvivor(40, 3)', () => expect(josephusSurvivor.josephusSurvivor(40, 3), equals(28)));
    test('josephusSurvivor(14, 2)', () => expect(josephusSurvivor.josephusSurvivor(14, 2), equals(13)));
    test('josephusSurvivor(100, 1)', () => expect(josephusSurvivor.josephusSurvivor(100, 1), equals(100)));
    test('josephusSurvivor(1, 300)', () => expect(josephusSurvivor.josephusSurvivor(1, 300), equals(1)));
    test('josephusSurvivor(2, 300)', () => expect(josephusSurvivor.josephusSurvivor(2, 300), equals(1)));
    test('josephusSurvivor(5, 300)', () => expect(josephusSurvivor.josephusSurvivor(5, 300), equals(1)));
    test('josephusSurvivor(7, 300)', () => expect(josephusSurvivor.josephusSurvivor(7, 300), equals(7)));
    test('josephusSurvivor(300, 300)', () => expect(josephusSurvivor.josephusSurvivor(300, 300), equals(265)));
  });
}
