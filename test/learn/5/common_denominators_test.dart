import 'package:flutter_learn/learn/5/common_denominators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final commonDenominators = CommonDenominators();
  void dotest(List<List<int>> lst, String exp) {
    test('Testing for: \n$lst \n', () =>
        expect(commonDenominators.convertFrac(lst), equals(exp)));
  }

  group('fixed tests', () {
    var lst = [ [4, 8], [4, 5], [3, 4], [6, 9], [7, 10] ];
    dotest(lst, '(30,60)(48,60)(45,60)(40,60)(42,60)');
    lst = [ [2, 2], [3, 1], [4, 1], [5, 1] ];
    dotest(lst, '(1,1)(3,1)(4,1)(5,1)');
    lst = [ [2, 4], [1, 3], [1, 4] ];
    dotest(lst, '(6,12)(4,12)(3,12)');
    lst = [ [69, 130], [87, 1310], [3, 4] ];
    dotest(lst, '(18078,34060)(2262,34060)(25545,34060)');
    lst = [ [77, 130], [84, 131], [3, 4] ];
    dotest(lst, '(20174,34060)(21840,34060)(25545,34060)');
    lst = [ [6, 13], [187, 1310], [31, 41] ];
    dotest(lst, '(322260,698230)(99671,698230)(527930,698230)');
    lst = [ [8, 15], [7, 111], [4, 25] ];
    dotest(lst, '(1480,2775)(175,2775)(444,2775)');

  });
}
