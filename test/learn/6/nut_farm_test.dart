import 'package:flutter_learn/learn/6/nut_farm.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final nutFarm = NutFarm();
  test('Bounce Left', () {
    var tree = [' o o o  ', ' /    / ', '   /    ', '  /  /  ', '   ||   ', '   ||   ', '   ||   '];
    var actual = nutFarm.shakeTree(tree);
    var expected = [1, 1, 0, 0, 1, 0, 0, 0];
    expect(actual, equals(expected));
  });
  test('Bounce Right', () {
    var tree = [' o o o  ', ' \\    \\ ', '   \\    ', '  \\  \\  ', '   ||   ', '   ||   ', '   ||   '];
    var actual = nutFarm.shakeTree(tree);
    var expected = [0, 0, 0, 1, 1, 0, 1, 0];
    expect(actual, equals(expected));
  });
  test('Get stuck', () {
    var tree = [' o o o  ', ' _      ', '   _ _  ', '   ||   ', '   ||   ', '   ||   '];
    var actual = nutFarm.shakeTree(tree);
    var expected = [0, 0, 0, 0, 0, 0, 0, 0];
    expect(actual, equals(expected));
  });
  test('Get stuck', () {
    var tree = [
      '.oooooo.',
      './..\\./.',
      '.._..\\..',
      '.../._..',
      '..\\.....',
    ];
    var actual = nutFarm.shakeTree(tree);
    var expected = [1, 0, 0, 1, 0, 0, 3, 0];
    expect(actual, equals(expected));
  });
}
