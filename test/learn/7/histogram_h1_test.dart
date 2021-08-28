import 'package:flutter_learn/learn/7/histogram_h1.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final histogramH1 = HistogramH1();

  String shw(List<int> results) {
    print(results);
    final hist = histogramH1.histogram(results);
    print(hist);
    return hist;
  }

  group('tests', () {
    test('Basic test', () {
      const expected = '6|##### 5\n5|\n4|# 1\n3|########## 10\n2|### 3\n1|####### 7\n';
      expect(shw([7, 3, 10, 1, 0, 5]), equals(expected));
    });
    test('Zero test', () {
      const expected = '6|\n5|\n4|\n3|\n2|\n1|\n';
      expect(shw([0, 0, 0, 0, 0, 0]), equals(expected));
    });
  });
}
