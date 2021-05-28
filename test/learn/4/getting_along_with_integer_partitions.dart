import 'package:flutter_learn/learn/4/getting_along_with_integer_partitions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final gettingAlongWithIntegerPartitions = GettingAlongWithIntegerPartitions();
  void dotest(int n, String exp) =>
      test('Testing', () => expect(gettingAlongWithIntegerPartitions.part(n), equals(exp)));
  group('fixed tests', () {
    // dotest(3, 'Range: 2 Average: 2.00 Median: 2.00');
    // dotest(4, 'Range: 3 Average: 2.50 Median: 2.50');
    // dotest(5, 'Range: 5 Average: 3.50 Median: 3.50');
    dotest(8, 'Range: 17 Average: 8.29 Median: 7.50');
  });
}
