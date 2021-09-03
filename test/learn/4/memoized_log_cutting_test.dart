import 'package:flutter_learn/learn/4/memoized_log_cutting.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  /// The p list is organized by price to foot by index, so the
  /// 1st element contains the price for 1 ft, 2nd is for 2 ft,
  /// 3rd is 3 ft, etc...

//         0    1    2    3    4    5    6    7... and so on
  final p = [
    0, 1, 5, 8, 9, 10, 17, 17, 20, 24, // 0X's
    30, 32, 35, 39, 43, 43, 45, 49, 50, 54, // 1X's
    57, 60, 65, 68, 70, 74, 80, 81, 84, 85, // 2X's
    87, 91, 95, 99, 101, 104, 107, 112, 115, 116, // 3X's
    119, 121, 125, 129, 131, 134, 135, 140, 143, 145, // 4X's
    151
  ]; // 50th element
// Note that the 0th element has a cost of $0

  group('Example Log', () {
    final memoizedLogCutting = MemoizedLogCutting();
    test(r'The optimal price for n = 0 should be \$0', () => expect(memoizedLogCutting.cutLog(p, 0), equals(0)));
    test(r'The optimal price for n = 1 should be \$1', () => expect(memoizedLogCutting.cutLog(p, 1), equals(1)));
    test(r'The optimal price for n = 5 should be \$13', () => expect(memoizedLogCutting.cutLog(p, 5), equals(13)));
    test(r'The optimal price for n = 8 should be \$22', () => expect(memoizedLogCutting.cutLog(p, 8), equals(22)));
    test(r'The optimal price for n = 10 should be \$30', () => expect(memoizedLogCutting.cutLog(p, 10), equals(30)));
    test(r'The optimal price for n = 22 should be \$65', () => expect(memoizedLogCutting.cutLog(p, 22), equals(65)));
    test(r'The optimal price for n = 23 should be \$69', () => expect(memoizedLogCutting.cutLog(p, 23), equals(69)));
    test(r'The optimal price for n = 37 should be \$112', () => expect(memoizedLogCutting.cutLog(p, 37), equals(112)));
    test(r'The optimal price for n = 41 should be \$125', () => expect(memoizedLogCutting.cutLog(p, 41), equals(125)));
    test(r'The optimal price for n = 50 should be \$153', () => expect(memoizedLogCutting.cutLog(p, 50), equals(153)));
  });
}
