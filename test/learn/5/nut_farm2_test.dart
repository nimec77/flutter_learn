import 'package:flutter_learn/learn/5/nut_farm2.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final nutFarm2 = NutFarm2();

  // test('Bounce Left', () {
  //   var tree = [' o o o  ', ' /    / ', '   /    ', '  /  /  ', '   ||   ', '   ||   ', '   ||   '];
  //   var actual = nutFarm2.shakeTree(tree);
  //   var expected = [1, 1, 0, 0, 1, 0, 0, 0];
  //   expect(actual, equals(expected));
  // });

  test('Roll Left', () {
    var tree = [' o      ', ' / o o/ ', ' ///    ', '   ///  ', '   ||   ', '   ||   ', '   ||   '];
    var actual = nutFarm2.shakeTree(tree);
    var expected = [2, 0, 1, 0, 0, 0, 0, 0];
    expect(actual, equals(expected));
  });

  test('Bounce Right', () {
    var tree = [' o o o  ', ' \\    \\ ', '   \\    ', '  \\  \\  ', '   ||   ', '   ||   ', '   ||   '];
    var actual = nutFarm2.shakeTree(tree);
    var expected = [0, 0, 0, 1, 1, 0, 1, 0];
    expect(actual, equals(expected));
  });

  test('Roll Right', () {
    var tree = [
      ' o o  oo  ',
      ' \\\\\\   \\\\ ',
      '  o \\o    ',
      '  \\\\  \\   ',
      '    ||    ',
      '    ||    ',
      '    ||    '
    ];
    var actual = nutFarm2.shakeTree(tree);
    var expected = [0, 0, 0, 0, 1, 3, 0, 1, 0, 1];
    expect(actual, equals(expected));
  });
}
