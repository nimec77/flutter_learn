import 'package:flutter_learn/learn/6/nut_farm.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final nutFarm = NutFarm();
  test('Bounce Left', () {
    final tree = [' o o o  ', ' /    / ', '   /    ', '  /  /  ', '   ||   ', '   ||   ', '   ||   '];
    final actual = nutFarm.shakeTree(tree);
    final expected = [1, 1, 0, 0, 1, 0, 0, 0];
    expect(actual, equals(expected));
  });
  test('Bounce Right', () {
    final tree = [' o o o  ', r' \\    \\ ', r'   \\    ', r'  \\  \\  ', '   ||   ', '   ||   ', '   ||   '];
    final actual = nutFarm.shakeTree(tree);
    final expected = [0, 0, 0, 1, 1, 0, 1, 0];
    expect(actual, equals(expected));
  });
  test('Get stuck', () {
    final tree = [' o o o  ', ' _      ', '   _ _  ', '   ||   ', '   ||   ', '   ||   '];
    final actual = nutFarm.shakeTree(tree);
    final expected = [0, 0, 0, 0, 0, 0, 0, 0];
    expect(actual, equals(expected));
  });
  test('Get stuck', () {
    final tree = [
      '.oooooo.',
      r'./..\\./.',
      r'.._..\\..',
      '.../._..',
      r'..\\.....',
    ];
    final actual = nutFarm.shakeTree(tree);
    final expected = [1, 0, 0, 1, 0, 0, 3, 0];
    expect(actual, equals(expected));
  });
}
