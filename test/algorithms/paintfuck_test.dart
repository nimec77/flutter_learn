import 'package:flutter_learn/learn/algorithms/paintfuck.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final paintfuck = Paintfuck();

  test('White screen', () {
    final result = paintfuck.paintfuck('*[s[e]*]', 3 * 3 * 3 * 3, 3, 3);
    expect(result, '111\r\n111\r\n111');
  });
}
