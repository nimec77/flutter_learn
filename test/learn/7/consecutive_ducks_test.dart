import 'package:flutter_learn/learn/7/consecutive_ducks.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final consecutiveDucks = ConsecutiveDucks();
  group('Consecutive Ducks', () {
    test('Check Small Values', () {
      expect(consecutiveDucks.consecutiveDucks(10), equals(true));
      expect(consecutiveDucks.consecutiveDucks(69), equals(true));
      expect(consecutiveDucks.consecutiveDucks(8), equals(false));
      expect(consecutiveDucks.consecutiveDucks(57), equals(true));
      expect(consecutiveDucks.consecutiveDucks(6), equals(true));
      expect(consecutiveDucks.consecutiveDucks(13), equals(true));
      expect(consecutiveDucks.consecutiveDucks(16), equals(false));
      expect(consecutiveDucks.consecutiveDucks(91), equals(true));
      expect(consecutiveDucks.consecutiveDucks(75), equals(true));
      expect(consecutiveDucks.consecutiveDucks(38), equals(true));
      expect(consecutiveDucks.consecutiveDucks(25), equals(true));
      expect(consecutiveDucks.consecutiveDucks(32), equals(false));
      expect(consecutiveDucks.consecutiveDucks(65), equals(true));
      expect(consecutiveDucks.consecutiveDucks(13), equals(true));
      expect(consecutiveDucks.consecutiveDucks(16), equals(false));
      expect(consecutiveDucks.consecutiveDucks(99), equals(true));
    });
    test('Check Medium Values', () {
      expect(consecutiveDucks.consecutiveDucks(522), equals(true));
      expect(consecutiveDucks.consecutiveDucks(974), equals(true));
      expect(consecutiveDucks.consecutiveDucks(755), equals(true));
      expect(consecutiveDucks.consecutiveDucks(512), equals(false));
      expect(consecutiveDucks.consecutiveDucks(739), equals(true));
      expect(consecutiveDucks.consecutiveDucks(1006), equals(true));
      expect(consecutiveDucks.consecutiveDucks(838), equals(true));
      expect(consecutiveDucks.consecutiveDucks(1092), equals(true));
      expect(consecutiveDucks.consecutiveDucks(727), equals(true));
      expect(consecutiveDucks.consecutiveDucks(648), equals(true));
      expect(consecutiveDucks.consecutiveDucks(1024), equals(false));
      expect(consecutiveDucks.consecutiveDucks(851), equals(true));
      expect(consecutiveDucks.consecutiveDucks(541), equals(true));
      expect(consecutiveDucks.consecutiveDucks(1011), equals(true));
      expect(consecutiveDucks.consecutiveDucks(822), equals(true));
    });
    test('Check Large Values', () {
      expect(consecutiveDucks.consecutiveDucks(382131), equals(true));
      expect(consecutiveDucks.consecutiveDucks(118070), equals(true));
      expect(consecutiveDucks.consecutiveDucks(17209), equals(true));
      expect(consecutiveDucks.consecutiveDucks(32768), equals(false));
      expect(consecutiveDucks.consecutiveDucks(161997), equals(true));
      expect(consecutiveDucks.consecutiveDucks(400779), equals(true));
      expect(consecutiveDucks.consecutiveDucks(198331), equals(true));
      expect(consecutiveDucks.consecutiveDucks(325482), equals(true));
      expect(consecutiveDucks.consecutiveDucks(88441), equals(true));
      expect(consecutiveDucks.consecutiveDucks(648), equals(true));
      expect(consecutiveDucks.consecutiveDucks(65536), equals(false));
      expect(consecutiveDucks.consecutiveDucks(323744), equals(true));
      expect(consecutiveDucks.consecutiveDucks(183540), equals(true));
      expect(consecutiveDucks.consecutiveDucks(65271), equals(true));
      expect(consecutiveDucks.consecutiveDucks(5263987), equals(true));
    });
  });
}