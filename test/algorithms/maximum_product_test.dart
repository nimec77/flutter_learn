import 'package:flutter_learn/learn/algorithms/maximum_product.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final maximumProduct = MaximumProduct();
  group('Test Maximum Product', () {
    test('should throw ArgumentError', () {
      expect(() => maximumProduct.maxProductByPairs([], 1), throwsArgumentError);
    });
    test('should return 300', () {
      expect(maximumProduct.maxProductByPairs([-100, 2, -3], 2), 300);
    });
    test('should return 12', () {
      expect(maximumProduct.maxProductByPairs([-2, -3, -4], 2), 12);
    });
    test('should return -24', () {
      expect(maximumProduct.maxProductByPairs([-2, -3, -4], 3), -24);
    });
    test('should return 24', () {
      expect(maximumProduct.maxProductByPairs([-2, 3, -4, 2, 1], 3), 24);
    });
    test('should return 4320', () {
      expect(maximumProduct.maxProductByPairs([-10, 9, -8, -7, -6, 2, 1], 4), 3360);
    });
    test('should return 15120', () {
      expect(maximumProduct.maxProductByPairs(List.generate(10, (index) => index), 5), 15120);
    });
  });
}
