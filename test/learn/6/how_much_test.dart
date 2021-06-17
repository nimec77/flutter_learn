import 'package:flutter_learn/learn/6/how_much.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final howMuch = HowMuch();
  group('How Much', () {
    test('Basic Tests', () {
      expect(
          howMuch.howMuch(250, 300),
          equals([
            ['M: 289', 'B: 41', 'C: 32'],
          ]));
      expect(
          howMuch.howMuch(1, 100),
          equals([
            ['M: 37', 'B: 5', 'C: 4'],
            ['M: 100', 'B: 14', 'C: 11']
          ]));
      expect(
          howMuch.howMuch(1000, 1100),
          equals([
            ['M: 1045', 'B: 149', 'C: 116']
          ]));
      expect(
          howMuch.howMuch(10000, 9950),
          equals([
            ['M: 9991', 'B: 1427', 'C: 1110']
          ]));
      expect(howMuch.howMuch(2950, 2950), equals([]));
      expect(
          howMuch.howMuch(8200, 8000),
          equals([
            ['M: 8038', 'B: 1148', 'C: 893'],
            ['M: 8101', 'B: 1157', 'C: 900'],
            ['M: 8164', 'B: 1166', 'C: 907']
          ]));
    });
  });
}
