import 'package:flutter_learn/learn/8/how_good_are_you_really.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final howGoodAreYouReally = HowGoodAreYouReally();
  group('Fixed tests', () {
    test('betterThanAverage([2, 3], 5)', () => expect(howGoodAreYouReally.betterThanAverage([2, 3], 5), equals(true)));
    test('betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75)',
        () => expect(howGoodAreYouReally.betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75), equals(true)));
    test('betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69)',
        () => expect(howGoodAreYouReally.betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69), equals(true)));
    test(
        'betterThanAverage([[35, 10, 64, 12, 8, 12, 0, 10, 34, 70, 50, 56, 20, 94, 91, 94, 84, 35, 20, 48, 89, 41, 36, '
            '92, 27, 82, 81, 29, 27, 41, 46, 69, 28, 54, 52, 16, 68, 30, 54, 14, 82, 67, 75, 48, 80, 34, 55, 71, 4, 57],'
            ' 47)',
        () => expect(
            howGoodAreYouReally.betterThanAverage([
              35,
              10,
              64,
              12,
              8,
              12,
              0,
              10,
              34,
              70,
              50,
              56,
              20,
              94,
              91,
              94,
              84,
              35,
              20,
              48,
              89,
              41,
              36,
              92,
              27,
              82,
              81,
              29,
              27,
              41,
              46,
              69,
              28,
              54,
              52,
              16,
              68,
              30,
              54,
              14,
              82,
              67,
              75,
              48,
              80,
              34,
              55,
              71,
              4,
              57
            ], 47),
            equals(false)));
  });
}
