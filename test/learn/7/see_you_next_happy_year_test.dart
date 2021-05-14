import 'package:flutter_learn/learn/7/see_you_next_happy_year.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final seeYouNextHappyYear = SeeYouNextHappyYear();
    test('Testing for 1001', () {
      expect(seeYouNextHappyYear.nextHappyYear(1001), equals(1023));
    });
    test('Testing for 1123', () {
      expect(seeYouNextHappyYear.nextHappyYear(1123), equals(1203));
    });
    test('Testing for 2001', () {
      expect(seeYouNextHappyYear.nextHappyYear(2001), equals(2013));
    });
    test('Testing for 2334', () {
      expect(seeYouNextHappyYear.nextHappyYear(2334), equals(2340));
    });
    test('Testing for 3331', () {
      expect(seeYouNextHappyYear.nextHappyYear(3331), equals(3401));
    });
    test('Testing for 1987', () {
      expect(seeYouNextHappyYear.nextHappyYear(1987), equals(2013));
    });
    test('Testing for 5555', () {
      expect(seeYouNextHappyYear.nextHappyYear(5555), equals(5601));
    });
    test('Testing for 7712', () {
      expect(seeYouNextHappyYear.nextHappyYear(7712), equals(7801));
    });
    test('Testing for 8088', () {
      expect(seeYouNextHappyYear.nextHappyYear(8088), equals(8091));
    });
    test('Testing for 8999', () {
      expect(seeYouNextHappyYear.nextHappyYear(8999), equals(9012));
    });
  });
}