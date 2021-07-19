import 'package:flutter_learn/learn/7/maximum_product.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final maximumProduct = MaximumProduct();
  group('Fixed tests', () {
    test('Testing for [5, 8]', () {
      expect(maximumProduct.adjacentElementsProduct([5, 8]), equals(40));
    });
    test('Testing for [1, 2, 3]', () {
      expect(maximumProduct.adjacentElementsProduct([1, 2, 3]), equals(6));
    });
    test('Testing for [1, 5, 10, 9]', () {
      expect(maximumProduct.adjacentElementsProduct([1, 5, 10, 9]), equals(90));
    });
    test('Testing for [4, 12, 3, 1, 5]', () {
      expect(maximumProduct.adjacentElementsProduct([4, 12, 3, 1, 5]), equals(48));
    });
    test('Testing for [5, 1, 2, 3, 1, 4]', () {
      expect(maximumProduct.adjacentElementsProduct([5, 1, 2, 3, 1, 4]), equals(6));
    });
    test('Testing for [3, 6, -2, -5, 7, 3]', () {
      expect(maximumProduct.adjacentElementsProduct([3, 6, -2, -5, 7, 3]), equals(21));
    });
    test('Testing for [9, 5, 10, 2, 24, -1, -48]', () {
      expect(maximumProduct.adjacentElementsProduct([9, 5, 10, 2, 24, -1, -48]), equals(50));
    });
    test('Testing for [5, 6, -4, 2, 3, 2, -23]', () {
      expect(maximumProduct.adjacentElementsProduct([5, 6, -4, 2, 3, 2, -23]), equals(30));
    });
    test('Testing for [-23, 4, -5, 99, -27, 329, -2, 7, -921]', () {
      expect(maximumProduct.adjacentElementsProduct([-23, 4, -5, 99, -27, 329, -2, 7, -921]), equals(-14));
    });
    test('Testing for [5, 1, 2, 3, 1, 4]', () {
      expect(maximumProduct.adjacentElementsProduct([5, 1, 2, 3, 1, 4]), equals(6));
    });
    test('Testing for [1, 0, 1, 0, 1000]', () {
      expect(maximumProduct.adjacentElementsProduct([1, 0, 1, 0, 1000]), equals(0));
    });
    test('Testing for [1, 2, 3, 0]', () {
      expect(maximumProduct.adjacentElementsProduct([1, 2, 3, 0]), equals(6));
    });
  });
}