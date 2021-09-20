import 'package:flutter_learn/learn/6/bowling_pins.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final bowlingPins = BowlingPins();
  test('Sample test cases', () {
    expect(bowlingPins.blowingPins([2,3]), equals('I I I I\n I I I \n       \n   I   '));
    expect(bowlingPins.blowingPins([1,2,10]), equals('I I I  \n I I I \n    I  \n       '));
  });
}
