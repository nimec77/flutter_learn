import 'package:flutter_learn/learn/6/new_cashier.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final newCashier = NewCashier();
  group('Solution', () {
    test('Fixed Tests', () {
      expect(newCashier.getOrderBest('milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza'),
          equals('Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke'));
      expect(newCashier.getOrderBest('pizzachickenfriesburgercokemilkshakefriessandwich'),
          equals('Burger Fries Fries Chicken Pizza Sandwich Milkshake Coke'));
      expect(newCashier.getOrderBest('burgerfriesfriesfriesfriesfriespizzasandwichcokefriesburger'),
          equals('Burger Burger Fries Fries Fries Fries Fries Fries Pizza Sandwich Coke'));
    });
  });
}