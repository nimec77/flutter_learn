import 'package:flutter_learn/learn/6/mexican_wave.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mexicanWave = MexicanWave();
  group('Fixed tests', () {
    test("Testing for 'a       b    '", () => expect(mexicanWave.wave('a       b    '), equals(['A       b    ', 'a       B    '])));
    test("Testing for 'this is a few words'", () => expect(mexicanWave.wave('this is a few words'), equals(['This is a few words', 'tHis is a few words', 'thIs is a few words', 'thiS is a few words', 'this Is a few words', 'this iS a few words', 'this is A few words', 'this is a Few words', 'this is a fEw words', 'this is a feW words', 'this is a few Words', 'this is a few wOrds', 'this is a few woRds', 'this is a few worDs', 'this is a few wordS'])));
    test("Testing for ''", () => expect(mexicanWave.wave(''), equals([])));
    test("Testing for ' gap '", () => expect(mexicanWave.wave(' gap '), equals([' Gap ', ' gAp ', ' gaP '])));
  });
}