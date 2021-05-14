import 'package:flutter_learn/learn/algorithms/maximum_product.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final maximumProduct = MaximumProduct();
  group('Test Maximum Product', () {
    test ('should return 0', () {
      expect(maximumProduct.maxProduct([], 1), 0);
    });
    test('should return 300', () {
      expect(maximumProduct.maxProduct([-100, 2, -3], 2), 300);
    });
    test ('should return 12', () {
      expect(maximumProduct.maxProduct([-2, -3, -4], 2), 12);
    });
    test ('should return -24', () {
      expect(maximumProduct.maxProduct([-2, -3, -4], 3), -24);
    });
    test ('should return -24', () {
      expect(maximumProduct.maxProduct([-2, 3, -4, 2, 1], 3), 24);
    });
    test ('should return 4320', () {
      expect(maximumProduct.maxProduct([-10, 9, -8, -7, -6, 2, 1], 4), 3360);
    });
    test('should return 15120', () {
      expect(maximumProduct.maxProduct(List.generate(10, (index) => index), 5), 15120);
    });
  });
}